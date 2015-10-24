.class Loy;
.super Ljava/lang/Object;
.source "ToolboxImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lov;

.field private b:Ljava/lang/String;

.field private c:Lox;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lov;Ljava/lang/String;Lox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Loy;->a:Lov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Loy;->b:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Loy;->c:Lox;

    .line 122
    return-void
.end method

.method static synthetic a(Loy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Loy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Loy;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Loy;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Loy;->d:Landroid/widget/ImageView;

    .line 126
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Loy;->a:Lov;

    invoke-static {v0}, Lov;->a(Lov;)Loq;

    move-result-object v0

    iget-object v1, p0, Loy;->b:Ljava/lang/String;

    iget-object v2, p0, Loy;->c:Lox;

    iget v2, v2, Lox;->b:I

    iget-object v3, p0, Loy;->c:Lox;

    iget v3, v3, Lox;->c:I

    invoke-virtual {v0, v1, v2, v3}, Loq;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Loy;->a:Lov;

    iget-object v1, p0, Loy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lov;->a(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Loy;->a:Lov;

    invoke-static {v1}, Lov;->b(Lov;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Loy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Loy;->a:Lov;

    invoke-static {v1}, Lov;->c(Lov;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Loz;

    invoke-direct {v2, p0, v0}, Loz;-><init>(Loy;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
