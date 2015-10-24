.class public Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;
.super Lcom/gau/go/launcherex/gowidget/framework/GoWidgetFrame;
.source "GOPowerMgrMidWidget.java"


# static fields
.field protected static final BATTERY_HIGHT:I = 0x0

.field protected static final BATTERY_LOW:I = 0x1

.field public static final BROADCAST_ACTION_REFRESH_GO_WIDGET:Ljava/lang/String; = "broadcast_actiono_refresh_go_widget"

.field private static final DEBUG:Z = false

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# instance fields
.field private mBatteryDigitText:Landroid/widget/TextView;

.field private mBatteryImageView:Landroid/widget/ImageView;

.field private mBatteryStatus:I

.field private mBatteryView:Landroid/widget/LinearLayout;

.field private mChargSignImage:Landroid/widget/ImageView;

.field private mChargingTime:I

.field private mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

.field private mIsCharging:Z

.field private mIsReceiverRegitstered:Z

.field private mOnekeyImage:Landroid/widget/Button;

.field private mPercent:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemainingBatteryTime:I

.field protected mRes:Landroid/content/res/Resources;

.field private mTimeContentText:Landroid/widget/TextView;

.field private mTimeTitleText:Landroid/widget/TextView;

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/gau/go/launcherex/gowidget/framework/GoWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsReceiverRegitstered:Z

    .line 58
    new-instance v0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$1;

    invoke-direct {v0, p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$1;-><init>(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)V

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    invoke-direct {v0, p1}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    .line 255
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    invoke-virtual {v0}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRes:Landroid/content/res/Resources;

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->processRefreshIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f2

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryView:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$2;

    invoke-direct {v1, p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$2;-><init>(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mOnekeyImage:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mOnekeyImage:Landroid/widget/Button;

    new-instance v1, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$3;

    invoke-direct {v1, p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$3;-><init>(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method private processRefreshIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const-string v0, "Percent"

    iget v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mPercent:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mPercent:I

    .line 92
    const-string v0, "IsCharging"

    iget-boolean v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsCharging:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsCharging:Z

    .line 93
    const-string v0, "ChargingTime"

    iget v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargingTime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargingTime:I

    .line 94
    const-string v0, "RemainingBatteryTime"

    iget v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRemainingBatteryTime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRemainingBatteryTime:I

    .line 96
    const-string v0, "BatteryStatus"

    iget v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryStatus:I

    .line 97
    invoke-virtual {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->refreshWidgetUI()V

    .line 98
    const-string v0, "Update GO UI"

    invoke-direct {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->showLog(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private refreshBatteryDigitPercent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargSignImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargSignImage:Landroid/widget/ImageView;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryDigitText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryDigitText:Landroid/widget/TextView;

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsCharging:Z

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargSignImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryDigitText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryDigitText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryDigitText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargSignImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshBatteryImage()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f0204ad

    .line 124
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryImageView:Landroid/widget/ImageView;

    .line 128
    :cond_0
    iget v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mPercent:I

    iget-object v2, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    const/16 v3, 0x58

    invoke-static {v2, v3}, Laxb;->a(Landroid/content/Context;I)I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    .line 129
    iget v2, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mPercent:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 130
    iget-object v2, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    if-nez v2, :cond_2

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 137
    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 142
    :try_start_0
    new-instance v3, Laza;

    iget-object v4, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f0204ad

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v4, v5, v0, v2}, Laza;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v3}, Laza;->a()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_1
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 151
    :cond_3
    iget v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryStatus:I

    if-nez v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laxb;->a(Landroid/content/res/Resources;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    :goto_2
    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Laxb;->a(Landroid/content/res/Resources;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method private refreshTimeView()V
    .locals 7

    .prologue
    const/16 v2, 0x3e7

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeTitleText:Landroid/widget/TextView;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeContentText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeContentText:Landroid/widget/TextView;

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsCharging:Z

    if-eqz v0, :cond_5

    .line 190
    iget v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargingTime:I

    int-to-long v3, v0

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_9

    .line 191
    iget v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mChargingTime:I

    .line 193
    :goto_0
    iget-object v3, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a0176

    invoke-virtual {v4, v5}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v0

    .line 207
    :goto_1
    const/16 v0, 0xe10

    if-le v3, v0, :cond_7

    .line 208
    div-int/lit16 v0, v3, 0xe10

    .line 209
    mul-int/lit16 v4, v0, 0xe10

    sub-int/2addr v3, v4

    .line 211
    :goto_2
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_2

    .line 212
    div-int/lit8 v1, v3, 0x3c

    .line 213
    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v3, v4

    .line 216
    :cond_2
    if-le v0, v2, :cond_3

    move v0, v2

    .line 219
    :cond_3
    div-int/lit8 v2, v0, 0x64

    .line 220
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    .line 221
    rem-int/lit8 v0, v0, 0xa

    .line 223
    div-int/lit8 v4, v1, 0xa

    .line 224
    rem-int/lit8 v1, v1, 0xa

    .line 226
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 227
    mul-int/lit8 v2, v4, 0xa

    add-int/2addr v1, v2

    .line 228
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 230
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0231

    invoke-virtual {v0, v3}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    if-nez v4, :cond_4

    .line 232
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 235
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0232

    invoke-virtual {v0, v1}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeContentText:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mBatteryStatus:I

    if-nez v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeContentText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    :goto_3
    return-void

    .line 196
    :cond_5
    iget v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRemainingBatteryTime:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_8

    .line 197
    iget v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mRemainingBatteryTime:I

    .line 199
    :goto_4
    iget-object v3, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a0177

    invoke-virtual {v4, v5}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v0

    goto/16 :goto_1

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mTimeContentText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private registReceiver()V
    .locals 3

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsReceiverRegitstered:Z

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    const-string v1, "broadcast_actiono_refresh_go_widget"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    iget-object v2, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsReceiverRegitstered:Z

    .line 76
    :cond_0
    return-void
.end method

.method private showLog(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    return-void
.end method

.method private startRefreshServices()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    const-class v3, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    const-class v3, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsReceiverRegitstered:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mIsReceiverRegitstered:Z

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onApplyTheme(Landroid/os/Bundle;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onDelete(I)V
    .locals 0
    .parameter

    .prologue
    .line 279
    return-void
.end method

.method public onPause(I)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->unregisterReceiver()V

    .line 275
    return-void
.end method

.method public onRemove(I)V
    .locals 0
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->unregisterReceiver()V

    .line 284
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->registReceiver()V

    .line 269
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->startRefreshServices()V

    .line 270
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 260
    const-string v0, "gowidget_Id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mWidgetId:I

    .line 261
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->initView()V

    .line 262
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->registReceiver()V

    .line 263
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->startRefreshServices()V

    .line 264
    return-void
.end method

.method protected refreshWidgetUI()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->refreshBatteryImage()V

    .line 248
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->refreshBatteryDigitPercent()V

    .line 249
    invoke-direct {p0}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->refreshTimeView()V

    .line 250
    return-void
.end method
