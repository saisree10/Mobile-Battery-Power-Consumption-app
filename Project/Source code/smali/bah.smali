.class Lbah;
.super Ljava/lang/Object;
.source "ShellUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbai;

.field final synthetic b:Lbag;


# direct methods
.method constructor <init>(Lbag;Lbai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lbah;->b:Lbag;

    iput-object p2, p0, Lbah;->a:Lbai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lbah;->b:Lbag;

    invoke-static {}, Lanr;->b()Lanr;

    move-result-object v1

    invoke-static {v0, v1}, Lbag;->a(Lbag;Lanr;)Lanr;
    :try_end_0
    .catch Lanq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    iget-object v0, p0, Lbah;->b:Lbag;

    invoke-static {v0, v3}, Lbag;->a(Lbag;Z)Z

    .line 88
    iget-object v0, p0, Lbah;->a:Lbai;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lbah;->a:Lbai;

    invoke-interface {v0, v2}, Lbai;->a(I)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    iget-object v0, p0, Lbah;->a:Lbai;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lbah;->a:Lbai;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lbai;->a(I)V

    .line 77
    :cond_1
    iget-object v0, p0, Lbah;->b:Lbag;

    invoke-static {v0, v2}, Lbag;->a(Lbag;Z)Z

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    iget-object v0, p0, Lbah;->a:Lbai;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lbah;->a:Lbai;

    invoke-interface {v0, v3}, Lbai;->a(I)V

    .line 84
    :cond_2
    iget-object v0, p0, Lbah;->b:Lbag;

    invoke-static {v0, v2}, Lbag;->a(Lbag;Z)Z

    goto :goto_0
.end method
