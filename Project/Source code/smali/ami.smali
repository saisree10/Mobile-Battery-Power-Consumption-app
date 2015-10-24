.class Lami;
.super Ljava/util/TimerTask;
.source "ModeCommand.java"


# instance fields
.field final synthetic a:Lamh;


# direct methods
.method constructor <init>(Lamh;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lami;->a:Lamh;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lami;->a:Lamh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lamh;->a(Lamh;Z)Z

    .line 225
    return-void
.end method
