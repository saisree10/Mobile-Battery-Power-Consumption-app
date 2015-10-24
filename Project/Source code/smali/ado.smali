.class public Lado;
.super Ljava/lang/Object;
.source "BatteryThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    iput p2, p0, Lado;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 604
    iget-object v0, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ladp;

    move-result-object v0

    iget v1, p0, Lado;->a:I

    invoke-virtual {v0, v1}, Ladp;->b(I)V

    .line 605
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 606
    iget-object v0, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, p0, Lado;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ladp;

    move-result-object v0

    iget-object v1, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ladp;->a(Ljava/util/ArrayList;)V

    .line 611
    iget-object v0, p0, Lado;->b:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;Z)V

    .line 612
    return-void
.end method
