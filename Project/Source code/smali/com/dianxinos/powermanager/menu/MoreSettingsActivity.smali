.class public Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;
.super Laam;
.source "MoreSettingsActivity.java"

# interfaces
.implements Lavh;
.implements Lur;


# instance fields
.field private a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private b:Lamb;

.field private c:Ladp;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private f:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private i:Z

.field private j:Z

.field private final k:[I

.field private l:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private o:Z

.field private p:Z

.field private q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private r:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private t:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private u:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private v:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private w:Laln;

.field private x:Ljava/util/ArrayList;

.field private y:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Laam;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020234

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020299

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02034e

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0202ee

    aput v2, v0, v1

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->k:[I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->x:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070158

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->v:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->v:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 156
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->v:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203de

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 158
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 159
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 160
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d7

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 161
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->e()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f0203de

    const v2, 0x7f0203db

    .line 164
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07015f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->e:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 165
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->e:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 166
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->e:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 168
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->f:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 169
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->f:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->f:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 172
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->y:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 173
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->y:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 174
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->y:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 176
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07015c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 177
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 178
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->i:Z

    .line 179
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->i:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 182
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07015d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 183
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 184
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->j:Z

    .line 185
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->j:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d7

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 187
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const v4, 0x7f0a0362

    const v3, 0x7f0203d7

    .line 190
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070160

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 191
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 192
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 194
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070163

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 195
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 196
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->p:Z

    .line 197
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->p:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203db

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 200
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070161

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0361

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v1, v4}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->b(II)V

    .line 203
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 204
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->o:Z

    .line 205
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->o:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203de

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 207
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->o:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e5

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v1, v4}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->a(II)V

    .line 217
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070164

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->u:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 218
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->u:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 219
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->u:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 220
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->u:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a(Z)V

    .line 221
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const v2, 0x7f0203db

    .line 224
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070165

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 225
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 226
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203de

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 228
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070166

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->r:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 229
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->r:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 230
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->r:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 232
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070167

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 233
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 234
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 236
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070168

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->t:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 237
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->t:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 238
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->t:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d7

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBgRID(I)V

    .line 239
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 353
    invoke-static {p0}, Lun;->a(Landroid/content/Context;)Lun;

    move-result-object v0

    .line 354
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lun;->a(IILur;)V

    .line 355
    return-void
.end method


# virtual methods
.method public a(IILjava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 362
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->x:Ljava/util/ArrayList;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luy;

    .line 365
    invoke-virtual {v0}, Luy;->b()Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {v0}, Luy;->a()Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v4, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->x:Ljava/util/ArrayList;

    new-instance v5, Lakn;

    invoke-direct {v5, v3, v0}, Lakn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_1
    return-void
.end method

.method public a(Lavg;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->v:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v2, :cond_1

    .line 281
    new-instance v0, Laos;

    invoke-direct {v0, p0}, Laos;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Laos;->show()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v2, :cond_2

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->e:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v2, :cond_4

    .line 286
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    invoke-virtual {v0}, Ladp;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    invoke-virtual {v0}, Ladp;->b()V

    .line 290
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->f:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v2, :cond_5

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :cond_5
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->y:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v2, :cond_6

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :cond_6
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_8

    .line 299
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->i:Z

    if-nez v2, :cond_7

    :goto_1
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->i:Z

    .line 300
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->i:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->i:Z

    invoke-virtual {v0, v1}, Lamb;->k(Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 299
    goto :goto_1

    .line 302
    :cond_8
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_a

    .line 303
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->j:Z

    if-nez v2, :cond_9

    :goto_2
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->j:Z

    .line 304
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->h:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->j:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->j:Z

    invoke-virtual {v0, v1}, Lamb;->h(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 303
    goto :goto_2

    .line 306
    :cond_a
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v2, :cond_b

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/menu/StatusBarSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 309
    :cond_b
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_d

    .line 310
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-object v3, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v3}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    :goto_3
    invoke-virtual {v2, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->o:Z

    .line 312
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->o:Z

    invoke-virtual {v0, v1}, Lamb;->b(Z)V

    .line 314
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->o:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e5

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0362

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->a(II)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 310
    goto :goto_3

    .line 318
    :cond_d
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_f

    .line 319
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-object v3, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v3}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    :goto_4
    invoke-virtual {v2, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->p:Z

    .line 321
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->p:Z

    invoke-virtual {v0, v1}, Lamb;->c(Z)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 319
    goto :goto_4

    .line 322
    :cond_f
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_10

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/UserTipsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 325
    :cond_10
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->r:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_12

    .line 326
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/feedback/HotQAActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "QA_LIST"

    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    :cond_11
    new-instance v0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-direct {v0, p0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->show()V

    goto/16 :goto_0

    .line 333
    :cond_12
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_13

    .line 334
    invoke-static {p0}, Laxn;->c(Landroid/app/Activity;)V

    .line 335
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    const-string v1, "dl-ck"

    invoke-virtual {v0, v1}, Lka;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_13
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->u:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_14

    .line 338
    invoke-static {p0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 339
    :cond_14
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->t:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_0

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/ShowVolunteersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Laam;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->setContentView(I)V

    .line 93
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 94
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 95
    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 96
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 97
    new-instance v1, Lalv;

    invoke-direct {v1, p0}, Lalv;-><init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020451

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 104
    new-instance v1, Lalw;

    invoke-direct {v1, p0}, Lalw;-><init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    .line 114
    const-string v0, "tab"

    const-string v1, "more"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 118
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a()V

    .line 119
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b()V

    .line 120
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c()V

    .line 121
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->d()V

    .line 123
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    .line 124
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    invoke-virtual {v0}, Ladp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07015e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->d:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :cond_0
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lalx;

    invoke-direct {v1, p0}, Lalx;-><init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v1, "com.dianxinos.dxbs.GOTO_TOOLBOX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    new-instance v1, Laly;

    invoke-direct {v1, p0}, Laly;-><init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->z:Landroid/content/BroadcastReceiver;

    .line 144
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Laam;->onDestroy()V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Laam;->onPause()V

    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(Z)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-super {p0}, Laam;->onResume()V

    .line 251
    invoke-static {v5}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(Z)V

    .line 252
    invoke-static {p0}, Laln;->a(Landroid/content/Context;)Laln;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->w:Laln;

    .line 253
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->w:Laln;

    invoke-virtual {v0}, Laln;->b()V

    .line 254
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->w:Laln;

    invoke-virtual {v0}, Laln;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    if-gtz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0262

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->f:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-static {p0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setEnabledString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->a()Z

    move-result v3

    .line 264
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->k:[I

    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->b:Lamb;

    invoke-virtual {v2}, Lamb;->b()I

    move-result v2

    aget v0, v0, v2

    move v2, v0

    .line 265
    :goto_1
    if-eqz v3, :cond_2

    move v0, v1

    .line 266
    :goto_2
    iget-object v3, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v3, v2, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a(II)V

    .line 267
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    invoke-virtual {v2}, Ladp;->g()I

    move-result v2

    .line 269
    iget-object v3, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->e:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iget-object v4, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->c:Ladp;

    invoke-virtual {v4, v0, v2, v5}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setIcon(Landroid/graphics/Bitmap;)V

    .line 270
    new-instance v0, Laxl;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Laxl;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {v0}, Laxl;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020206

    invoke-virtual {v0, v2, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a(II)V

    .line 276
    :goto_3
    return-void

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->a:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a036f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a025a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 264
    goto :goto_1

    .line 265
    :cond_2
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00d0

    goto :goto_2

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->s:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, v1, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a(II)V

    goto :goto_3
.end method
