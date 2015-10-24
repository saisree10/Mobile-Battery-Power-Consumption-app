.class Lbbm;
.super Lbq;
.source "ImageCache.java"


# instance fields
.field final synthetic a:Lbbk;


# direct methods
.method constructor <init>(Lbbk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lbbm;->a:Lbbk;

    invoke-direct {p0, p2}, Lbq;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lbbo;

    check-cast p4, Lbbo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbbm;->a(ZLjava/lang/String;Lbbo;Lbbo;)V

    return-void
.end method

.method public a(ZLjava/lang/String;Lbbo;Lbbo;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lbbo;->a(Z)V

    .line 74
    return-void
.end method
