function incremented_BN_itf_positions_untransformed = special_num_system_incrementation(BN_itf_positions_untransformed, ...
                                                                                        input_matrix_col_num, ...
                                                                                        num_of_nonzero_entries_each_col, ...
                                                                                        incrementation_number)
    
    BN_itf_positions_untransformed_subtracted = BN_itf_positions_untransformed - ones(input_matrix_col_num, 1);

    BN_itf_positions_untransformed_number_form = convert_from_special_to_ordinary(BN_itf_positions_untransformed_subtracted, ...
                                                                                  input_matrix_col_num, ...
                                                                                  num_of_nonzero_entries_each_col);

    incremented_BN_itf_positions_untransformed = convert_from_ordinary_to_special(BN_itf_positions_untransformed_number_form + ...
                                                                                  incrementation_number, ...
                                                                                  input_matrix_col_num, ...
                                                                                  num_of_nonzero_entries_each_col) + ...
                                                                                  ones(input_matrix_col_num, 1);

end