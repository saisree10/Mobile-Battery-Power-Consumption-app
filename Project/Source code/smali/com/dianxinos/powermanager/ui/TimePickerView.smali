.class public Lcom/dianxinos/powermanager/ui/TimePickerView;
.super Landroid/widget/LinearLayout;
.source "TimePickerView.java"

# interfaces
.implements Lavz;


# static fields
.field private static d:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lawz;

.field private c:[Ljava/lang/String;

.field private e:Lcom/dianxinos/powermanager/ui/NumPickerView;

.field private f:Lcom/dianxinos/powermanager/ui/NumPickerView;

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "15"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "20"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "25"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "55"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dianxinos/powermanager/ui/TimePickerView;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v0, "TimePickerView"

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->a:Ljava/lang/String;

    .line 22
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->c:[Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "TimePickerView"

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->a:Ljava/lang/String;

    .line 22
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->c:[Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->g:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->g:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontsize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->j:I

    .line 52
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->e:Lcom/dianxinos/powermanager/ui/NumPickerView;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/NumPickerView;->setCurrentSelected(I)V

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->f:Lcom/dianxinos/powermanager/ui/NumPickerView;

    div-int/lit8 v1, p2, 0x5

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/NumPickerView;->setCurrentSelected(I)V

    .line 73
    iput p1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->h:I

    .line 74
    iput p2, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->i:I

    .line 75
    return-void
.end method

.method public a(Lcom/dianxinos/powermanager/ui/NumPickerView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->b:Lawz;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->e:Lcom/dianxinos/powermanager/ui/NumPickerView;

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->h:I

    if-eq v0, p2, :cond_2

    .line 86
    iput p2, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->h:I

    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->b:Lawz;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->h:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->i:I

    invoke-interface {v0, p0, v1, v2}, Lawz;->a(Lcom/dianxinos/powermanager/ui/TimePickerView;II)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->f:Lcom/dianxinos/powermanager/ui/NumPickerView;

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->i:I

    if-eq v0, p2, :cond_0

    .line 90
    mul-int/lit8 v0, p2, 0x5

    iput v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->i:I

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->b:Lawz;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->h:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->i:I

    invoke-interface {v0, p0, v1, v2}, Lawz;->a(Lcom/dianxinos/powermanager/ui/TimePickerView;II)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/NumPickerView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->e:Lcom/dianxinos/powermanager/ui/NumPickerView;

    .line 57
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/NumPickerView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->f:Lcom/dianxinos/powermanager/ui/NumPickerView;

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->e:Lcom/dianxinos/powermanager/ui/NumPickerView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->g:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a([Ljava/lang/String;Landroid/graphics/Paint;II)V

    .line 59
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->f:Lcom/dianxinos/powermanager/ui/NumPickerView;

    sget-object v1, Lcom/dianxinos/powermanager/ui/TimePickerView;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->g:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a([Ljava/lang/String;Landroid/graphics/Paint;II)V

    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->e:Lcom/dianxinos/powermanager/ui/NumPickerView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->setObserver(Lavz;)V

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->f:Lcom/dianxinos/powermanager/ui/NumPickerView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->setObserver(Lavz;)V

    .line 62
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 67
    return-void
.end method

.method public setListener(Lawz;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/TimePickerView;->b:Lawz;

    .line 79
    return-void
.end method
