.class Lawy;
.super Landroid/os/AsyncTask;
.source "SleepModeTopTipsView.java"


# instance fields
.field final synthetic a:Lawu;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lawu;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lawy;->a:Lawu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    iput p2, p0, Lawy;->b:I

    .line 156
    iput p3, p0, Lawy;->c:I

    .line 157
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iget v0, p0, Lawy;->b:I

    iget-object v1, p0, Lawy;->a:Lawu;

    invoke-static {v1}, Lawu;->b(Lawu;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 162
    iget v0, p0, Lawy;->b:I

    :goto_0
    if-ltz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lawy;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lawy;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lawy;->publishProgress([Ljava/lang/Object;)V

    .line 178
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_1
    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lawy;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lawy;->publishProgress([Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 170
    :cond_2
    iget v0, p0, Lawy;->b:I

    :goto_2
    iget-object v1, p0, Lawy;->a:Lawu;

    invoke-static {v1}, Lawu;->b(Lawu;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lawy;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    new-array v0, v5, [Ljava/lang/Integer;

    iget-object v1, p0, Lawy;->a:Lawu;

    invoke-static {v1}, Lawu;->b(Lawu;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lawy;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lawy;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    :cond_3
    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lawy;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lawy;->publishProgress([Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lawy;->a:Lawu;

    invoke-static {v0}, Lawu;->c(Lawu;)Lawx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 186
    iget-object v2, p0, Lawy;->a:Lawu;

    invoke-static {v2}, Lawu;->c(Lawu;)Lawx;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lawx;->a(II)V

    .line 188
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lawy;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lawy;->a([Ljava/lang/Integer;)V

    return-void
.end method
