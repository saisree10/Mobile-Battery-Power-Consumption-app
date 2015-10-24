.class public Lbao;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    invoke-virtual {v0}, Lamb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    int-to-double v0, p1

    const-wide/high16 v2, 0x4024

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 96
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0361

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    .line 98
    :cond_0
    mul-int/lit8 v0, p1, 0x5a

    div-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    .line 99
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 100
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
