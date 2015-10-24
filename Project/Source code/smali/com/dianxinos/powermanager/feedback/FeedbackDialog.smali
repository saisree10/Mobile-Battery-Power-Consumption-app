.class public Lcom/dianxinos/powermanager/feedback/FeedbackDialog;
.super Lauu;
.source "FeedbackDialog.java"


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lake;

    invoke-direct {v0, p0}, Lake;-><init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->c:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b(Landroid/view/View;)V

    .line 95
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a010e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->setTitle(I)V

    .line 96
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0110

    new-instance v3, Lakg;

    invoke-direct {v3, p0}, Lakg;-><init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V

    invoke-virtual {p0, v0, v3}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(ILandroid/view/View$OnClickListener;)V

    .line 115
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0115

    new-instance v3, Lakh;

    invoke-direct {v3, p0}, Lakh;-><init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V

    invoke-virtual {p0, v0, v3}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b(ILandroid/view/View$OnClickListener;)V

    .line 124
    const-string v0, ""

    .line 125
    const-string v0, ""

    .line 126
    invoke-direct {p0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-direct {p0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b()Ljava/lang/String;

    move-result-object v4

    .line 129
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700e5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->d:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700e6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->e:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->e:Landroid/widget/EditText;

    new-instance v4, Laki;

    invoke-direct {v4, p0, v0}, Laki;-><init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->d:Landroid/widget/EditText;

    new-instance v2, Lakj;

    invoke-direct {v2, p0}, Lakj;-><init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v2, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b:Landroid/widget/Button;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    return-void

    :cond_0
    move v0, v1

    .line 166
    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    const-string v1, "feedback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    const-string v1, "content"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    const-string v1, "feedback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    const-string v1, "content"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 188
    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    const-string v1, "feedback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    const-string v1, "contact"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    const-string v1, "feedback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    const-string v1, "contact"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 196
    return-void
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b:Landroid/widget/Button;

    return-object v0
.end method
