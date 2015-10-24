.class Ladb;
.super Ljava/util/TimerTask;
.source "BatteryInfoHelper.java"


# instance fields
.field final synthetic a:Lacz;


# direct methods
.method constructor <init>(Lacz;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Ladb;->a:Lacz;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Ladb;->a:Lacz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lacz;->a(Lacz;Z)Z

    .line 320
    iget-object v0, p0, Ladb;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Ladb;->a:Lacz;

    iget-object v1, p0, Ladb;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    invoke-static {v0, v1}, Lacz;->a(Lacz;Ladd;)V

    .line 323
    :cond_0
    return-void
.end method
