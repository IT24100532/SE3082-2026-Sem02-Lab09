## <div align="center">Lab 09 – Introduction to CUDA (Google Colab)</div>

SE3082 – Parallel Computing, Semester 2, 2026 · Lab sheet: [LabSheet09-CUDA.pdf](LabSheet09-CUDA.pdf)

### How to run
1. Open [colab.research.google.com](https://colab.research.google.com) → **File → Upload notebook** →
   `SE3082_Lab09_IT24100532.ipynb`.
2. **Runtime → Change runtime type → T4 GPU → Save**.
3. **Runtime → Run all**. Each program is a `%%writefile` cell followed by a compile-and-run cell.
4. Save the notebook with its outputs (**File → Download → Download .ipynb**) and add it back to this repo.

### Files
| File | Exercise |
|---|---|
| `src/hello.cu` | Exercise 1: smoke test (1 block of 4 threads) |
| `src/test.cu` | Sample program from the lab folder (2 blocks of 4 threads) |
| `src/ex2_add.cu` | Exercise 2: add two numbers |
| `src/ex3_blocks.cu` | Exercise 3: vector addition, 512 blocks × 1 thread |
| `src/ex4_threads.cu`, `src/ex4_threads_2048.cu` | Exercise 4: 1 block × 512 threads, and the N = 2048 experiment |
| `src/ex5_vecmul.cu` | Exercise 5: 10,000,000-element vector multiply (all TODOs done) |
| `src/ex6_matrix.cu` | Exercise 6: 10,000 × 10,000 element-wise matrix multiply, 2D grid (all TODOs done) |

The answers to the THINK / PREDICT questions are text cells in the notebook.

### Checked before submitting
These programs were not run on a GPU yet (no NVIDIA GPU on the machine they were written on).
They were checked with a small CPU emulation of the CUDA calls on Linux (same `rand()` as Colab),
and every value matches the lab sheet's self-check tables:

| Program | Result |
|---|---|
| ex3 / ex4 | `83 + 77 = 160` first, `511) 67 + 6 = 73` last, `0 mismatches out of 512` |
| ex4 with N = 2048 | `Kernel launch failed: invalid configuration argument` |
| ex5 | `19532 blocks x 512 threads`, `9999000) 76 x 52 = 3952`, `9999999) 31 x 73 = 2263`, `0 mismatches out of 10000000` |
| ex6 | `Grid: 313 x 625 blocks`, `C[9999][9000] = 29 x 56 = 1624`, `C[9999][9999] = 86 x 21 = 1806`, `0 mismatches out of 100000000` |

Run the notebook on Colab to get the real GPU output and the GPU name for the Exercise 1 checklist.
