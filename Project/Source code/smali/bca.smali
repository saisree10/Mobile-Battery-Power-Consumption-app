.class public Lbca;
.super Ljava/lang/Object;
.source "CompleteProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lbco;

.field b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lbco;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lbca;->a:Lbco;

    .line 12
    iput-object v0, p0, Lbca;->b:Ljava/util/concurrent/CountDownLatch;

    .line 17
    iput-object p1, p0, Lbca;->a:Lbco;

    .line 18
    iput-object p2, p0, Lbca;->b:Ljava/util/concurrent/CountDownLatch;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbca;->a:Lbco;

    invoke-virtual {v0}, Lbco;->c()V

    .line 24
    iget-object v0, p0, Lbca;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbca;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    :cond_0
    return-void
.end method
