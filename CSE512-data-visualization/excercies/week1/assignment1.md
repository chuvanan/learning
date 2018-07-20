

# Assignment 1: Visualization Design

In this assignment, you will design a visualization for a small data set and
provide a rigorous rationale for your design choices. You should in theory be
ready to explain the contribution of every pixel in the display. You are free to
use any graphics or charting tool you please - including drafting it by
hand. However, you may find it most instructive to create the chart from scratch
using a graphics API of your choice.

(See Resources for a list of visualization tools.)

## Data Set: U.S. Population, 1900 vs. 2000

Every 10 years, the census bureau documents the demographic make-up of the
United States, influencing everything from congressional districting to social
services. This dataset contains a high-level summary of census data for two
years a century apart: 1900 and 2000. The data is a CSV (comma-separated values)
file that describes the U.S. population in terms of year, reported sex (1: male,
2: female), age group (binned into 5 year segments from 0-4 years old up to 90+
years old), and the total count of people per group. There are 38 data points
per year, for a total of 76 data points.

Dataset: [CSV](https://courses.cs.washington.edu/courses/cse512/18sp/data/census2000.csv)
Source: U.S. Census Bureau via IPUMS

## Assignment

Your task is to design a static (i.e., single image) visualization that you
believe effectively communicates the data and provide a short write-up (no more
than 4 paragraphs) describing your design. Start by choosing a question you'd
like your visualization to answer. Design your visualization to answer that
question, and use the question as the title of your graphic.

While you must use the data set given, note that you are free to transform the
data as you see fit. Such transforms may include (but are not limited to) log
transformation, computing percentages or averages, grouping elements into new
categories, or removing unnecessary variables or records. You are also free to
incorporate external data as you see fit. Your chart image should be
interpretable without recourse to your short write-up. Do not forget to include
title, axis labels or legends as needed!

As different visualizations can emphasize different aspects of a data set, you
should document what aspects of the data you are attempting to most effectively
communicate. In short, what story are you trying to tell? Just as important,
also note which aspects of the data might be obscured or down-played due to your
visualization design.

In your write-up, you should provide a rigorous rationale for your design
decisions. Document the visual encodings you used and why they are appropriate
for the data and your specific question. These decisions include the choice of
visualization type, size, color, scale, and other visual elements, as well as
the use of sorting or other data transformations. How do these decisions
facilitate effective communication?

## Grading

The assignment score is out of a maximum of 10 points. Historically, the median
score on this assignment has been 8.5, which corresponds to an A-. We will
determine scores by judging both the soundness of your design and the quality of
the write-up. We will also look for consideration of audience, message and
intended task. Here are examples of aspects that may lead to point deductions:

- Use of misleading, unnecessary, or unmotivated graphic elements.
- Missing chart title, axis labels, or data transformation description.
- Missing or incomplete design rationale in write-up.
- Ineffective encodings for your stated goal (e.g., distracting colors, improper
  data transformation).

We will reward entries that go above and beyond the assignment requirements to
produce effective graphics. Examples may include outstanding visual design,
meaningful incorporation of external data to reveal important trends,
demonstrating exceptional creativity, or effective annotations or other
narrative devices.

## Submission Details

This is an individual assignment. You may not work in groups. Your completed
assignment is due on Monday 4/2, by 8pm. We will be discussing submissions in
class, so be sure to avoid a late submission.

You must submit your assignment using Canvas. Please upload a single zip file
named using the pattern "uwnetid_a1.zip" (replacing "uwnetid" with your UW
network login - this is the same as your @uw email address, not a numeric id
number). The zip archive should contain two files: a plain text file named
"readme.txt" and a PNG or JPG image file of your visualization design.

Please use the correct file extension for your image (either .png or .jpg) and
be sure your image is sized for a reasonable viewing experience. Viewers should
not have to zoom or scroll in order to effectively view your submission!

The `readme.txt` file should contain your write-up, as described above. Please
be sure to include your name and UW net id in your readme.

If you are on the waiting list for the class do not have access to the Canvas
site, please email your submission to us at cse442@cs.washington.edu.
