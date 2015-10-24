.class public Laod;
.super Ljava/lang/Object;
.source "CoinFuncMgr.java"


# direct methods
.method public static a(Landroid/content/Context;Laoe;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 137
    invoke-virtual {p1}, Laoe;->c()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 138
    invoke-virtual {p1}, Laoe;->c()I

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Laoe;->d()I

    move-result v1

    .line 142
    invoke-static {p0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Laoe;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf;->a(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-eq v0, v3, :cond_1

    .line 145
    invoke-virtual {p1, v0}, Laoe;->a(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Laoe;I)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    if-gez p2, :cond_0

    .line 160
    invoke-virtual {p1}, Laoe;->d()I

    move-result p2

    .line 163
    :cond_0
    invoke-static {p0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Laoe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf;->a(Ljava/lang/String;I)V

    .line 165
    return p2
.end method
