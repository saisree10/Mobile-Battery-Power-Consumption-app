.class Lais;
.super Lbdx;
.source "PowerLineChart.java"


# instance fields
.field final synthetic a:Laiq;

.field private d:F


# direct methods
.method public constructor <init>(Laiq;Lbec;Lbei;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lais;->a:Laiq;

    .line 118
    invoke-direct {p0, p2, p3}, Lbdx;-><init>(Lbec;Lbei;)V

    .line 115
    const/high16 v0, 0x4040

    iput v0, p0, Lais;->d:F

    .line 119
    invoke-virtual {p3}, Lbei;->aa()F

    move-result v0

    iput v0, p0, Lais;->d:F

    .line 120
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v1, p0, Lais;->a:Laiq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laiq;->a(Laiq;Ljava/lang/String;)V

    move-object v1, p4

    .line 132
    check-cast v1, Lbek;

    .line 133
    invoke-virtual {v1}, Lbek;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    .line 135
    invoke-virtual {v1}, Lbek;->o()F

    move-result v2

    .line 136
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    .line 144
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 145
    sget-object v2, Lair;->a:[I

    invoke-virtual {v1}, Lbek;->n()Lbdv;

    move-result-object v3

    invoke-virtual {v3}, Lbdv;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 167
    invoke-super/range {p0 .. p7}, Lbdx;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V

    .line 173
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v2, p0, Lais;->a:Laiq;

    invoke-static {v2}, Laiq;->a(Laiq;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020117

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 148
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    .line 149
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    .line 150
    iget-object v2, p0, Lais;->a:Laiq;

    invoke-static {v2, p3}, Laiq;->a(Laiq;Ljava/util/List;)V

    .line 152
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    .line 153
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    const/high16 v2, -0x100

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    invoke-virtual {v1}, Lbek;->a()I

    move-result v2

    if-nez v2, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 159
    :cond_1
    div-int/lit8 v2, v3, 0x2

    add-int v2, v2, p7

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 152
    :goto_2
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    goto :goto_1

    .line 163
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v9, v7

    sub-float v9, v2, v9

    add-int/lit8 v2, v3, 0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v10, v8

    sub-float/2addr v2, v10

    invoke-virtual {p1, v6, v9, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
