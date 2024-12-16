#include "solver.h"

 double Solver6034::solve(
               ResidualFunction *f, // 目标函数
               double *X,           // 输入作为初值，输出作为结果
               GaussNewtonParams param = GaussNewtonParams(), // 优化参数
               GaussNewtonReport *report = nullptr // 优化结果报告
               ) {
                double *R = new double[f->nR()];
                double *J = new double[f->nR() * f->nX()];
                double *delta = new double[f->nX()];
				double *X_tmp = new double[f->nX()];
                cv::Mat X_mat = cv::Mat(f->nX(), 1, CV_64F, X);
                cv::Mat J_mat = cv::Mat(f->nR(), f->nX(), CV_64F, J);
                cv::Mat R_mat = cv::Mat(f->nR(), 1, CV_64F, R);
                cv::Mat delta_mat = cv::Mat(f->nX(), 1, CV_64F, delta);
				cv::Mat X_tmp_mat = cv::Mat(f->nX(), 1, CV_64F, X_tmp);
                
                for (int i = 0; i < param.max_iter; ++i) {
					// std::cout << i << std::endl;
                    f->eval(R, J, X);
                    cv::solve(J_mat, -R_mat, delta_mat, cv::DECOMP_SVD);
					// std::cout << delta_mat << std::endl;
					
                    
                    // 无穷范数
                    double norm_delta = cv::norm(delta_mat, cv::NORM_INF);
                    double norm_R = cv::norm(R_mat, cv::NORM_INF);
                    if (norm_delta < param.gradient_tolerance) {
                        report->stop_type = GaussNewtonReport::STOP_GRAD_TOL;
                        report->n_iter = i;
                        break;
                    } else if (norm_R < param.residual_tolerance) {
                        report->stop_type = GaussNewtonReport::STOP_RESIDUAL_TOL;
                        report->n_iter = i;
                        break;
                    } else {
                        double alpha = 1;
                        double beta = 0.1;
                        // 计算最优的alpha使得x = x + alpha * delta
                        // 使得目标函数的值下降
						double phi0_diff = cv::sum(2 * R_mat.t() * J_mat * delta_mat).val[0] * beta;
						double phi0 = cv::norm(R_mat, cv::NORM_L2SQR);
                        while (true) {
                            X_tmp_mat = X_mat + alpha * delta_mat;
                            f->eval(R, J, X_tmp);
                            double phi1 = cv::norm(R_mat, cv::NORM_L2SQR);

							// std::cout << phi1 - phi0 - phi0_diff << std::endl;
                            if (phi1 < phi0 + phi0_diff * alpha) {
                                break;
                            } else {
                                alpha *= beta;
                            }
                        }
                        X_mat = X_mat + alpha * delta_mat;

                        if (param.verbose) {
                            std::cout << "iter: " << i << ", norm_delta: " << norm_delta << ", norm_R: " << norm_R << std::endl;
                        }
                    }
                    
                    if (i == param.max_iter - 1) {
                        report->stop_type = GaussNewtonReport::STOP_NO_CONVERGE;
                        report->n_iter = i;
                    }
                }
                
                double result = cv::norm(R_mat, cv::NORM_L2SQR);
                delete[] R;
                delete[] J;
                delete[] delta;
                return result;

               }