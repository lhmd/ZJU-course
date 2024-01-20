import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// 通信线程
class ClientThread implements Runnable {
    private final Socket client; // 客户端套接字
    private Type type;       // 请求类型: 1 - html, 2 - txt, 3 - img

    public ClientThread(Socket client) {
        this.client = client;
    }

    // 获取请求资源路径（除前缀)
    private String getResourcePath(String s) {
        int begin = s.indexOf(' ') + 1;
        int end = s.indexOf(' ', begin);
        String name = s.substring(begin, end);
        if ("/".equals(name)) {
            name = "/html/test.html";
        }
        if ("/html/dopost".equals(name)) {
            name = "/dopost";
        }
        setType(name);
        return name;
    }

    // 设置响应类型
    private void setType(String name) {
        String postfix = name.substring(name.lastIndexOf('.') + 1);
        switch (postfix) {
            case "html":
            case "htm":
                type = Type.html;
                break;
            case "txt":
                type = Type.txt;
                break;
            case "jpg":
            case "jpeg":
                type = Type.img;
                break;
            default:
                type = Type.unknown;
                break;
        }
    }

    // 返回404错误
    private void notFound() throws IOException {
        DataOutputStream out = new DataOutputStream(client.getOutputStream());
        String errMsg = "HTTP/1.1 404 Not Found\r\nContent-Type:text/html\r\nContent-Length:22\r\n\r\n<h1>404 Not Found</h1>";
        out.write(errMsg.getBytes());
        out.flush();
        out.close();
    }

    // 响应处理
    private void response(File file) throws IOException {
        DataOutputStream out = new DataOutputStream(client.getOutputStream());
        out.write("HTTP/1.1 200 OK\r\nServer: MyWebServer\nDate: \" + (new Date()) + \"\\r\\n".getBytes());
        String contentType;
        switch (type) {
            case html -> contentType = "text/html";
            case img -> contentType = "image/jpeg";
            default -> contentType = "text/plain";
        }
        out.write(("Content-Type:" + contentType + "\r\n").getBytes());
        int len = (int) file.length();
        out.write(("Content-Length:" + len + "\r\n\r\n").getBytes());

        // 使用缓冲区读取和发送文件
        BufferedInputStream fileIn = new BufferedInputStream(new FileInputStream(file));
        byte[] buffer = new byte[256];
        int bytesRead;
        while ((bytesRead = fileIn.read(buffer)) != -1) {
            out.write(buffer, 0, bytesRead);
        }

        out.flush();
        fileIn.close();
        out.close();
    }

    // 校验处理
    private void check() throws IOException {
        DataInputStream in = new DataInputStream(client.getInputStream());
        int len = getContentLength(in);
        boolean flag = checkLoginInfo(in, len);
        sendCheckResponse(flag);
    }

    // 获取Content-Length
    private int getContentLength(DataInputStream in) throws IOException {
        int len = 0;
        String line;
        while (!(line = in.readLine()).isEmpty()) {
            if (line.startsWith("Content-Length:")) {
                len = Integer.parseInt(line.substring(16).trim());
            }
        }
        return len;
    }

    // 校验登录信息
    private boolean checkLoginInfo(DataInputStream in, int len) throws IOException {
        byte[] buffer = new byte[len];
        in.read(buffer);
        String msg = new String(buffer);
        String[] params = msg.split("&");
        String username = params[0].substring(params[0].indexOf('=') + 1);
        String password = params[1].substring(params[1].indexOf('=') + 1);
        return username.equals("3210106034") && password.equals("6034");
    }

    // 发送校验响应
    private void sendCheckResponse(boolean flag) throws IOException {
        DataOutputStream out = new DataOutputStream(client.getOutputStream());
        String response = "HTTP/1.1 200 OK\r\nContent-Type:text/html\r\n";
        if (flag) {
            response += "Content-Length:22\r\n\r\n<h1>Login Success!</h1>";
        } else {
            response += "Content-Length:21\r\n\r\n<h1>Login Failed!</h1>";
        }
        out.write(response.getBytes());
        out.flush();
        out.close();
    }

    @Override
    public void run() {
        try {
            DataInputStream in = new DataInputStream(client.getInputStream());
            String msg = in.readLine();
            String method = msg.substring(0, msg.indexOf(' '));

            if ("GET".equals(method)) {
                handleGetRequest(msg);
            } else if ("POST".equals(method)) {
                handlePostRequest(msg);
            }
            client.close();
        } catch (Exception e) {
            System.out.println("Client disconnected.");
        }
    }

    // 处理GET请求
    private void handleGetRequest(String msg) throws IOException {
        String fileName = getResourcePath(msg);
        String prefix = System.getProperty("user.dir") + "\\public";
        File file = new File(prefix + fileName);

        if (file.exists()) {
            response(file);
        } else {
            notFound();
        }
    }

    // 处理POST请求
    private void handlePostRequest(String msg) throws IOException {
        if ("/dopost".equals(getResourcePath(msg))) {
            check();
        } else {
            notFound();
        }
    }

    private enum Type {html, txt, img, unknown}
}

// 监听客户端请求的线程
class Handle implements Runnable {
    private final ExecutorService threadPool = Executors.newFixedThreadPool(20);
    private final ServerSocket server;

    public Handle(int port) throws IOException {
        this.server = new ServerSocket(port);
        System.out.println("Server initialized, listening on port: " + server.getLocalPort());
    }

    @Override
    public void run() {
        try {
            while (!server.isClosed()) {
                Socket clientSocket = server.accept();
                threadPool.execute(new ClientThread(clientSocket));
            }
        } catch (IOException e) {
            System.out.println("Server stopped.");
        }
    }
}

// 服务器主线程
public class WebServer {
    public static void main(String[] args) {
        int port = 16034;
        try {
            Handle handle = new Handle(port);
            new Thread(handle).start();
        } catch (Exception e) {
            System.out.println("Server failed to start.");
        }
    }
}
