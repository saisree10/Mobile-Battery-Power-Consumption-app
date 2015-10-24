.class Lnh;
.super Ljava/lang/Object;
.source "BaseRecommendPuller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lng;


# direct methods
.method constructor <init>(Lng;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lnh;->a:Lng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnh;->a:Lng;

    invoke-virtual {v0}, Lng;->c()V

    .line 71
    return-void
.end method
