.class public Lcom/dianxinos/powermanager/ui/DragListView;
.super Landroid/widget/ListView;
.source "DragListView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lacy;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/WindowManager;

.field private i:Landroid/view/WindowManager$LayoutParams;

.field private j:Landroid/view/ViewGroup;

.field private k:Laah;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lacy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    .line 54
    new-instance v0, Lacy;

    invoke-direct {v0, p1}, Lacy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    .line 55
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    invoke-virtual {v0, v1}, Lacy;->a(I)V

    .line 56
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    invoke-virtual {v0, v1}, Lacy;->b(I)V

    .line 57
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lacy;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lacy;->b(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->h:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    .line 167
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v0, p1}, Laah;->a(I)Lacy;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v1, v0}, Laah;->a(Lacy;)V

    .line 172
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->b:Lacy;

    invoke-virtual {v0, v1, p1}, Laah;->a(Lacy;I)V

    .line 173
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 176
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->f:I

    sub-int v0, p1, v0

    .line 177
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->f:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 179
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->h:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/dianxinos/powermanager/ui/DragListView;->pointToPosition(II)I

    move-result v0

    .line 183
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 185
    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    .line 186
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/DragListView;->b(I)V

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/DragListView;->c(I)V

    .line 189
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 139
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->a()V

    .line 140
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    .line 141
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 142
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 144
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->f:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 147
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 151
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 152
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 154
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 155
    const/16 v0, 0xaa

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 156
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->h:Landroid/view/WindowManager;

    .line 158
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->h:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iput-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    .line 160
    return-void
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 192
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    if-le v0, v1, :cond_1

    .line 193
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/DragListView;->b(II)V

    .line 194
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    if-ge v0, v1, :cond_0

    .line 196
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/DragListView;->c(II)V

    .line 197
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    goto :goto_0
.end method

.method private b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v0, p2}, Laah;->a(I)Lacy;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v2, p1}, Laah;->a(I)Lacy;

    move-result-object v2

    invoke-virtual {v1, v2}, Laah;->a(Lacy;)V

    .line 220
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v1, v0}, Laah;->a(Lacy;)V

    .line 221
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v1, v0, p1}, Laah;->a(Lacy;I)V

    .line 222
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    invoke-virtual {v0, v1, p2}, Laah;->a(Lacy;I)V

    .line 223
    return-void
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    .line 202
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->m:I

    if-ge p1, v0, :cond_1

    .line 203
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->m:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->o:I

    .line 211
    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->o:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/ui/DragListView;->setSelectionFromTop(II)V

    .line 215
    :cond_0
    return-void

    .line 205
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->n:I

    if-le p1, v0, :cond_2

    .line 206
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->n:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->o:I

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->o:I

    goto :goto_0
.end method

.method private c(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v0, p2}, Laah;->a(I)Lacy;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v2, p1}, Laah;->a(I)Lacy;

    move-result-object v2

    invoke-virtual {v1, v2}, Laah;->a(Lacy;)V

    .line 228
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v1, v0}, Laah;->a(Lacy;)V

    .line 229
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    invoke-virtual {v1, v2, p2}, Laah;->a(Lacy;I)V

    .line 230
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    invoke-virtual {v1, v0, p1}, Laah;->a(Lacy;I)V

    .line 231
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    if-gtz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/DragListView;->setSelectionFromTop(II)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/DragListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v3, v0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v4, v0

    .line 72
    invoke-virtual {p0, v3, v4}, Lcom/dianxinos/powermanager/ui/DragListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    .line 74
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 77
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->d:I

    .line 78
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget v5, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    invoke-virtual {v0, v5}, Laah;->a(I)Lacy;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->b:Lacy;

    .line 80
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->j:Landroid/view/ViewGroup;

    .line 81
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    sub-int v0, v4, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->f:I

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    int-to-float v5, v4

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->g:I

    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->j:Landroid/view/ViewGroup;

    sget-object v5, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v5, 0x7f070025

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->m:I

    .line 87
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->n:I

    .line 88
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/DragListView;->b:Lacy;

    invoke-virtual {v2, v3}, Laah;->a(Lacy;)V

    .line 91
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/DragListView;->p:Lacy;

    iget v5, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    invoke-virtual {v2, v3, v5}, Laah;->a(Lacy;I)V

    .line 92
    invoke-direct {p0, v0, v4}, Lcom/dianxinos/powermanager/ui/DragListView;->a(Landroid/graphics/Bitmap;I)V

    move v0, v1

    .line 93
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 95
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 98
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DragListView;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 105
    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    return v0

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->a()V

    .line 108
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->e:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/DragListView;->a(I)V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    .line 110
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 114
    iput v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->l:I

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/DragListView;->a(II)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Laah;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DragListView;->k:Laah;

    .line 65
    return-void
.end method
