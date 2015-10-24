.class Lyk;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lyi;


# direct methods
.method constructor <init>(Lyi;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lyk;->a:Lyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lyk;->a:Lyi;

    invoke-virtual {v0}, Lyi;->a()V

    .line 122
    return-void
.end method
