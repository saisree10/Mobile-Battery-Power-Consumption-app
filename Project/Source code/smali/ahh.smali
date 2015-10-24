.class Lahh;
.super Ljava/lang/Object;
.source "AutoSyncCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lahg;


# direct methods
.method constructor <init>(Lahg;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lahh;->a:Lahg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lahh;->a:Lahg;

    iget-object v0, v0, Lahg;->a:Lahf;

    iget-object v0, v0, Lahf;->e:Lahq;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lahh;->a:Lahg;

    iget-object v0, v0, Lahg;->a:Lahf;

    invoke-virtual {v0}, Lahf;->a()Z

    .line 32
    iget-object v0, p0, Lahh;->a:Lahg;

    iget-object v0, v0, Lahg;->a:Lahf;

    iget-boolean v0, v0, Lahf;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 33
    :goto_0
    iget-object v1, p0, Lahh;->a:Lahg;

    iget-object v1, v1, Lahg;->a:Lahf;

    iget-object v1, v1, Lahf;->e:Lahq;

    iget-object v2, p0, Lahh;->a:Lahg;

    iget-object v2, v2, Lahg;->a:Lahf;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 35
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
