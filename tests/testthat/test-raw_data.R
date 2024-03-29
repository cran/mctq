test_that("raw_data() | general test", {
    checkmate::expect_character(
        raw_data(), any.missing = FALSE, all.missing = FALSE
        )

    checkmate::expect_string(raw_data(raw_data()[1]), na.ok = FALSE)
})

test_that("raw_data() | error test", {
    # checkmate::assert_character(file, any.missing = FALSE, null.ok = TRUE)
    expect_error(raw_data(file = 1), "Assertion on 'file' failed")

    expect_error(raw_data(
        file = as.character(NA)
    ),
    "Assertion on 'file' failed"
    )
})
