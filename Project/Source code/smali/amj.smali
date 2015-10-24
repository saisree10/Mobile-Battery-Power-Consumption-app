.class Lamj;
.super Ljava/util/TimerTask;
.source "ModeCommand.java"


# instance fields
.field final synthetic a:Lamh;


# direct methods
.method constructor <init>(Lamh;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lamj;->a:Lamh;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lamj;->a:Lamh;

    invoke-static {v0}, Lamh;->a(Lamh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lamj;->a:Lamh;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lamh;->b(I)V

    .line 275
    :cond_0
    iget-object v0, p0, Lamj;->a:Lamh;

    invoke-static {v0}, Lamh;->b(Lamh;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lamj;->a:Lamh;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lamh;->b(I)V

    .line 277
    :cond_1
    iget-object v0, p0, Lamj;->a:Lamh;

    invoke-static {v0}, Lamh;->c(Lamh;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lamj;->a:Lamh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lamh;->b(I)V

    .line 279
    :cond_2
    return-void
.end method
