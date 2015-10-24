.class public Lhd;
.super Ljava/lang/Object;
.source "ADResponseContent.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:[Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lhd;->c:I

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lhd;->k:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 266
    iget-object v2, p0, Lhd;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget v2, p0, Lhd;->i:I

    if-ne v2, v1, :cond_2

    .line 271
    iget-object v1, p0, Lhd;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhd;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhd;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lhd;->j:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhd;->j:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 277
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 282
    goto :goto_0
.end method

.method public a(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 286
    invoke-virtual {p0}, Lhd;->a()I

    move-result v0

    .line 287
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v3, v0

    .line 309
    :cond_0
    :goto_0
    return v3

    .line 291
    :cond_1
    const-string v2, ""

    .line 292
    if-nez v0, :cond_0

    move v2, v1

    move v0, v3

    .line 293
    :goto_1
    iget-object v4, p0, Lhd;->j:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 294
    iget-object v4, p0, Lhd;->j:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_3

    .line 293
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_3
    iget-object v4, p0, Lhd;->j:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {p1, v4}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    if-nez v4, :cond_2

    move v0, v1

    .line 301
    goto :goto_2

    .line 305
    :cond_4
    if-eqz v0, :cond_0

    goto :goto_0
.end method
