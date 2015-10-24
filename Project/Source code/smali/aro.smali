.class Laro;
.super Landroid/os/Handler;
.source "FloatSwitchWindow.java"


# instance fields
.field final synthetic a:Larm;


# direct methods
.method private constructor <init>(Larm;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Laro;->a:Larm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Larm;Larn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Laro;-><init>(Larm;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Laro;->a:Larm;

    invoke-static {v0}, Larm;->a(Larm;)Lacz;

    move-result-object v0

    iget-object v1, p0, Laro;->a:Larm;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 226
    iget-object v0, p0, Laro;->a:Larm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larm;->a(Larm;Z)Z

    .line 227
    iget-object v0, p0, Laro;->a:Larm;

    invoke-static {v0}, Larm;->a(Larm;)Lacz;

    move-result-object v0

    iget-object v1, p0, Laro;->a:Larm;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    goto :goto_0

    .line 228
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Laro;->a:Larm;

    invoke-static {v0}, Larm;->d(Larm;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Laro;->a:Larm;

    invoke-static {v1}, Larm;->b(Larm;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Laro;->a:Larm;

    invoke-static {v2}, Larm;->c(Larm;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Laro;->a:Larm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Larm;->b(Larm;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "FloatSwitchWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aleady added view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
