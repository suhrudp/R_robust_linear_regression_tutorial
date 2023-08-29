# ROBUST LINEAR REGRESSION

## **LOAD LIBRARIES**

```{r}
library(MASS)
library(gtsummary)
```

## **ATTACH DATA**

```{r}
df <- read.csv(file.choose())
attach(df)
View(df)
```

## **DESCRIPTIVE ANALYSIS**

```{r}
tbl_summary(data=df)
```

## **ORDINARY LEAST-SQUARES LINEAR REGRESSION**

```{r}
mod1 <- lm(sales ~ adverts + airplay + attract, data=df)
```

## PLOTTING RESPONSE VERSUS STANDARDIZED RESIDUALS TO VISUALIZE OUTLIERS

```{r}
plot(sales, rstandard(mod1), ylab='Standardized Residuals', xlab='Sales') 
abline(h=0)
```

## ROBUST LINEAR REGRESSION

```{r}
mod2 <- rlm(sales ~ adverts + airplay + attract, data=df)
```

## RESIDUAL STANDARD ERROR OF EACH MODEL

```{r}
summary(mod1)$sigma
summary(mod2)$sigma
```
