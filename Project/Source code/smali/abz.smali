.class public Labz;
.super Ljava/lang/Object;
.source "ShortcutOnekeyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Labz;->b:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    iput-object p2, p0, Labz;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iget-object v1, p0, Labz;->b:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 57
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 58
    iget-object v2, p0, Labz;->b:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 59
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    if-gtz v1, :cond_0

    .line 61
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    :cond_0
    iget-object v1, p0, Labz;->b:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    iget-object v1, p0, Labz;->b:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    iget-object v2, p0, Labz;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;Landroid/content/Intent;II)V

    .line 65
    return-void
.end method
