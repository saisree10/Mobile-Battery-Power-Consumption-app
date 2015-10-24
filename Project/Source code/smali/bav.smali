.class Lbav;
.super Lbbd;
.source "AsyncTask.java"


# instance fields
.field final synthetic a:Lbat;


# direct methods
.method constructor <init>(Lbat;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lbav;->a:Lbat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbd;-><init>(Lbau;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lbav;->a:Lbat;

    invoke-static {v0}, Lbat;->a(Lbat;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 313
    iget-object v0, p0, Lbav;->a:Lbat;

    iget-object v1, p0, Lbav;->a:Lbat;

    iget-object v2, p0, Lbav;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lbat;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lbat;->a(Lbat;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
