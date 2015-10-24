.class Layi;
.super Ljava/lang/Object;
.source "AppsPowerUsageListAdapterKitKat.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Layg;


# direct methods
.method constructor <init>(Layg;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Layi;->a:Layg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Layj;Layj;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 355
    iget-wide v3, p1, Layj;->d:D

    iget-wide v5, p2, Layj;->d:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    .line 356
    iget-object v3, p1, Layj;->g:Ljava/lang/String;

    iget-object v4, p0, Layi;->a:Layg;

    invoke-static {v4}, Layg;->a(Layg;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lazy;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 357
    iget-object v4, p2, Layj;->g:Ljava/lang/String;

    iget-object v5, p0, Layi;->a:Layg;

    invoke-static {v5}, Layg;->a(Layg;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lazy;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    .line 358
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 362
    :cond_1
    :goto_0
    return v0

    .line 358
    :cond_2
    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 359
    :cond_4
    iget-wide v3, p1, Layj;->d:D

    iget-wide v5, p2, Layj;->d:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    move v0, v1

    .line 360
    goto :goto_0

    :cond_5
    move v0, v2

    .line 362
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    check-cast p1, Layj;

    check-cast p2, Layj;

    invoke-virtual {p0, p1, p2}, Layi;->a(Layj;Layj;)I

    move-result v0

    return v0
.end method
