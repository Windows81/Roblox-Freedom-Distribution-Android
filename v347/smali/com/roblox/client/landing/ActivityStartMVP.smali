.class public Lcom/roblox/client/landing/ActivityStartMVP;
.super Lcom/roblox/client/l/f;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/roblox/client/landing/b$a;
.implements Lcom/roblox/client/landing/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/landing/ActivityStartMVP$a;
    }
.end annotation


# static fields
.field private static final s:[Lcom/roblox/client/landing/a;


# instance fields
.field private p:Lcom/roblox/client/landing/d$a;

.field private q:Lcom/roblox/client/l/a$a;

.field private r:Lcom/roblox/abtesting/a;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/roblox/client/landing/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/roblox/client/landing/a;

    const v3, 0x7f0e0084

    const v4, 0x7f0e0083

    const v5, 0x7f07076c

    invoke-direct {v2, v3, v4, v5}, Lcom/roblox/client/landing/a;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/roblox/client/landing/a;

    const v3, 0x7f0e0082

    const v4, 0x7f0e0081

    const v5, 0x7f07076b

    invoke-direct {v2, v3, v4, v5}, Lcom/roblox/client/landing/a;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/roblox/client/landing/a;

    const v3, 0x7f0e0080

    const v4, 0x7f0e007f

    const v5, 0x7f07076a

    invoke-direct {v2, v3, v4, v5}, Lcom/roblox/client/landing/a;-><init>(III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/landing/ActivityStartMVP;->s:[Lcom/roblox/client/landing/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/roblox/client/l/f;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/l/h;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->q:Lcom/roblox/client/l/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/l/a$a;->a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V

    .line 210
    return-void
.end method

.method private a(Lcom/roblox/client/startup/e;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->startActivity(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->finish()V

    .line 236
    return-void
.end method

.method private w()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 161
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 164
    new-instance v1, Lcom/roblox/client/landing/ActivityStartMVP$a;

    .line 166
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->e()Landroid/support/v4/app/l;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/landing/ActivityStartMVP;->s:[Lcom/roblox/client/landing/a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/landing/ActivityStartMVP$a;-><init>(Lcom/roblox/client/landing/ActivityStartMVP;Landroid/support/v4/app/l;[Lcom/roblox/client/landing/a;Lcom/roblox/client/landing/ActivityStartMVP$1;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/p;)V

    .line 168
    const v1, 0x7f080108

    invoke-virtual {p0, v1}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;Z)V

    .line 172
    :cond_0
    const v0, 0x7f0801e5

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/roblox/client/util/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ANIMATE_BUTTONS_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 182
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    :cond_2
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_3

    .line 189
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 190
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    :cond_3
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->u:Landroid/widget/Button;

    .line 196
    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->t:Landroid/widget/Button;

    .line 197
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    .line 198
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->w:Landroid/view/View;

    .line 199
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->z()V

    .line 240
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/content/Context;Lcom/roblox/client/game/a;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const-string v1, "GUEST_MODE_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->finish()V

    .line 246
    return-void
.end method

.method private z()V
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->e()Lcom/roblox/client/locale/c;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1, p0}, Lcom/roblox/client/locale/a;->b(Lcom/roblox/client/locale/c;Landroid/content/Context;)Z

    .line 252
    sget-object v2, Lcom/roblox/client/locale/a$a;->b:Lcom/roblox/client/locale/a$a;

    invoke-virtual {v0, v2}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/a$a;)V

    .line 253
    const-string v0, "rbx.locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/l/a$a;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->q:Lcom/roblox/client/l/a$a;

    .line 271
    return-void
.end method

.method public a(Lcom/roblox/client/l/e;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->m:Lcom/roblox/client/l/e;

    .line 266
    return-void
.end method

.method public a(Lcom/roblox/client/landing/d$a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->p:Lcom/roblox/client/landing/d$a;

    .line 261
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/roblox/client/landing/d$a;

    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/landing/d$a;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->b(Z)V

    .line 276
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 313
    if-eqz p1, :cond_0

    sget-object v0, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    .line 318
    :goto_0
    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/startup/e;)V

    .line 319
    return-void

    .line 313
    :cond_0
    sget-object v0, Lcom/roblox/client/startup/e;->f:Lcom/roblox/client/startup/e;

    goto :goto_0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/roblox/client/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "ActivityStartMVP"

    const-string v1, "showLoginDialog: Launch Login MVP activity..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Landroid/app/Activity;)V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v0, "ActivityStartMVP"

    const-string v1, "showLoginDialog: Launch Login activity..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {p0}, Lcom/roblox/client/login/ActivityLogin;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 291
    invoke-static {p0}, Lcom/roblox/client/signup/ActivitySignUp;->a(Landroid/app/Activity;)V

    .line 292
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->y()V

    .line 297
    return-void
.end method

.method public n()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-static {}, Lcom/roblox/client/landing/b;->a()Lcom/roblox/client/landing/b;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f010015

    const v3, 0x7f010013

    .line 305
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/support/v4/app/p;->a(IIII)Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f080107

    const-string v3, "FragmentAbout"

    .line 306
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 309
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/l/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    const/16 v0, 0x277d

    if-ne p1, v0, :cond_1

    .line 139
    packed-switch p2, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    sget-object v0, Lcom/roblox/client/landing/d$b;->f:Lcom/roblox/client/landing/d$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/l/h;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->p:Lcom/roblox/client/landing/d$a;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$a;->a()V

    goto :goto_0

    .line 147
    :cond_1
    const/16 v0, 0x277f

    if-ne p1, v0, :cond_0

    .line 148
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->p:Lcom/roblox/client/landing/d$a;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$a;->b()V

    goto :goto_0

    .line 150
    :pswitch_3
    sget-object v0, Lcom/roblox/client/landing/d$b;->a:Lcom/roblox/client/landing/d$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/l/h;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x68
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 217
    :sswitch_0
    sget-object v0, Lcom/roblox/client/landing/d$b;->c:Lcom/roblox/client/landing/d$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/l/h;)V

    goto :goto_0

    .line 220
    :sswitch_1
    sget-object v0, Lcom/roblox/client/landing/d$b;->a:Lcom/roblox/client/landing/d$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/l/h;)V

    goto :goto_0

    .line 223
    :sswitch_2
    sget-object v0, Lcom/roblox/client/landing/d$b;->d:Lcom/roblox/client/landing/d$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/l/h;)V

    goto :goto_0

    .line 226
    :sswitch_3
    sget-object v0, Lcom/roblox/client/landing/d$b;->e:Lcom/roblox/client/landing/d$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/l/h;)V

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x7f080008 -> :sswitch_3
        0x7f080119 -> :sswitch_0
        0x7f080152 -> :sswitch_2
        0x7f0801a9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/roblox/client/l/f;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    const-string v0, "ActivityStartMVP"

    const-string v1, "onCreate: no AppSettings - Start Splash..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/roblox/client/startup/e;->b:Lcom/roblox/client/startup/e;

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/startup/e;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/roblox/client/b;->aX()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    :cond_2
    invoke-static {}, Lcom/roblox/client/b;->aY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    :cond_3
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->setContentView(I)V

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/p;->a:Landroid/util/DisplayMetrics;

    .line 100
    invoke-direct {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->w()V

    .line 101
    invoke-direct {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->x()V

    .line 104
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->r:Lcom/roblox/abtesting/a;

    .line 106
    new-instance v0, Lcom/roblox/client/landing/e;

    invoke-direct {v0, p0}, Lcom/roblox/client/landing/e;-><init>(Lcom/roblox/client/landing/d$c;)V

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->p:Lcom/roblox/client/landing/d$a;

    .line 108
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->r:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_4
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->setContentView(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/roblox/client/l/f;->onResume()V

    .line 122
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->f()Lcom/roblox/client/locale/a$a;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/locale/a$a;->b:Lcom/roblox/client/locale/a$a;

    if-ne v1, v2, :cond_1

    .line 124
    invoke-virtual {v0, p0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/roblox/client/locale/a;->b(Lcom/roblox/client/locale/c;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->recreate()V

    .line 127
    :cond_0
    sget-object v1, Lcom/roblox/client/locale/a$a;->a:Lcom/roblox/client/locale/a$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/a$a;)V

    .line 129
    :cond_1
    const-string v0, "rbx.locale"

    const-string v1, "in ActivityStartMVP onResume()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 325
    return-void
.end method
