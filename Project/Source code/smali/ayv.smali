.class public final Layv;
.super Ljava/lang/Object;
.source "AsyncHandler.java"


# static fields
.field private static final a:Landroid/os/HandlerThread;

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Layv;->a:Landroid/os/HandlerThread;

    .line 23
    sget-object v0, Layv;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Layv;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Layv;->b:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    sget-object v0, Layv;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Layv;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    return-void
.end method
