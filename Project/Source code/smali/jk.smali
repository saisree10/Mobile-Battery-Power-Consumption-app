.class Ljk;
.super Ljava/lang/Object;
.source "EventReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljj;


# direct methods
.method constructor <init>(Ljj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Ljk;->b:Ljj;

    iput-object p2, p0, Ljk;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Ljk;->b:Ljj;

    invoke-static {v0}, Ljj;->a(Ljj;)Lsb;

    move-result-object v0

    const-string v1, "appupdate"

    iget-object v2, p0, Ljk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lsb;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    .line 111
    return-void
.end method
