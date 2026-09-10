# In-Class Exercises: GPH-GU 2182 (Statistical Programming in R)

This is **your personal repository** for the weekly in-class paired exercises.
You accepted it once through Classroom 50 and you will reuse it all semester.

## First-time setup (once)

Open RStudio. You do not need a project open, and you do not need to copy any
link from this page. Paste these two lines into the **Console**:

```r
source("https://gph-2182.github.io/gph2182.R")
gph_inclass()
```

That finds this repository, downloads it, and opens it as an RStudio project.
You will know it worked when a **Git** tab appears in the top-right pane.

If it says it cannot tell who you are on GitHub, run `gph_setup()` first,
follow what it asks, then `gph_inclass()` again. You do that once per computer.

<details>
<summary>Doing it by hand instead</summary>

1. Copy this repository's URL from your browser's address bar.
2. In RStudio: **File > New Project > Version Control > Git**, paste the URL,
   choose a local folder, and click **Create Project**.
3. You should now see a **Git** tab in the top-right pane. If you do not, you
   opened a plain folder rather than a Git project; repeat step 2.

</details>

Nothing to send the instructor: this repository lives in the course
organization, so it is already visible for grading. **Do not create your own
in-class repository under your personal GitHub account.** One made by hand is
invisible to us, and if it is public your classmates can read your answers.

## Every week

1. Get the worksheet with one line in the RStudio **Console** (from inside this
   project):

   ```r
   source("get_worksheet.R")
   get_worksheet(2)      # use that week's number
   ```

   This downloads `week-NN-inclass.qmd` into the project folder, correctly
   named. It never overwrites a file you already have. (Worksheets unlock on
   the course website the Sunday before class; if you prefer, you can also
   download the file from that week's page on
   [gph-2182.github.io](https://gph-2182.github.io/).)
2. Put **both partners' names** in the `author` field at the top.
3. Fill in the code chunks with your partner during class.
4. Click **Render** and confirm the HTML looks clean.
5. Commit and push before the end of class:
   - Check the boxes in RStudio's **Git** pane (stage)
   - **Commit** with a short message, e.g. `week 2 in-class`
   - **Push**

## Grading

In-class exercises are graded on **completeness and effort**, not strict
correctness. The lowest 2 scores of the semester are dropped. What matters is
that you engage with your partner and push your work by the end of class.

## Getting help

If Git or GitHub gives you trouble, do the R work first and we will sort out
the push together. Ask in class, come to office hours, or email the instructor
or course assistant with a screenshot of the exact error.
