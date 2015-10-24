.class public Laph;
.super Landroid/widget/LinearLayout;
.source "BaseSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:[I


# instance fields
.field public b:I

.field public c:Z

.field public d:Landroid/content/Context;

.field public e:Lamp;

.field public f:Lamh;

.field public g:Laoy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Laph;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v3, p0, Laph;->b:I

    .line 38
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->DxSwitch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Laph;->c:Z

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-virtual {p0}, Laph;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    sget-object v1, Laph;->a:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 44
    sget-object v1, Laph;->a:[I

    const/4 v2, 0x1

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090087

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v2

    .line 46
    iput-object p1, p0, Laph;->d:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Laph;->e:Lamp;

    .line 48
    iget-object v0, p0, Laph;->e:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Laph;->f:Lamh;

    .line 49
    invoke-static {p1}, Laoy;->a(Landroid/content/Context;)Laoy;

    move-result-object v0

    iput-object v0, p0, Laph;->g:Laoy;

    .line 51
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Laph;->setGravity(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Laph;->c:Z

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Laph;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "widget14"

    const-string v2, "cswitch"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 60
    :cond_0
    return-void
.end method
