.class public Lamw;
.super Landroid/os/AsyncTask;
.source "ModeMgrActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lamw;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamw;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Lamr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lamw;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 650
    const/16 v0, 0xa

    :goto_0
    if-ltz v0, :cond_0

    .line 651
    iget-boolean v2, p0, Lamw;->b:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 659
    :goto_1
    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    .line 660
    iget-boolean v2, p0, Lamw;->b:Z

    if-eqz v2, :cond_3

    .line 668
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 653
    :cond_2
    new-array v2, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lamw;->publishProgress([Ljava/lang/Object;)V

    .line 655
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 662
    :cond_3
    new-array v2, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lamw;->publishProgress([Ljava/lang/Object;)V

    .line 664
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 656
    :catch_0
    move-exception v2

    goto :goto_2

    .line 665
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public a()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamw;->b:Z

    .line 646
    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamw;->b:Z

    .line 674
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 641
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lamw;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lamw;->a(Ljava/lang/Void;)V

    return-void
.end method
