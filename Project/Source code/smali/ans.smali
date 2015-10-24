.class Lans;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanr;


# direct methods
.method constructor <init>(Lanr;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lans;->a:Lanr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lans;->a:Lanr;

    invoke-static {v0}, Lanr;->a(Lanr;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "Shell"

    const-string v2, "IO Exception"

    invoke-static {v1, v2, v0}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
