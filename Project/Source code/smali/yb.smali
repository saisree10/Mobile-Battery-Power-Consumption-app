.class Lyb;
.super Ljava/lang/Object;
.source "HorizontalSlideItem.java"

# interfaces
.implements Lyf;


# instance fields
.field final synthetic a:Lya;


# direct methods
.method constructor <init>(Lya;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lyb;->a:Lya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lyb;->a:Lya;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lya;->a(Lya;I)I

    .line 133
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lyb;->a:Lya;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lya;->a(Lya;I)I

    .line 138
    return-void
.end method
