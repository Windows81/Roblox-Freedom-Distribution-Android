.class public Lcom/roblox/client/landing/ActivityStartMVP;
.super Lcom/roblox/client/u/f;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/roblox/client/landing/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/landing/ActivityStartMVP$a;
    }
.end annotation


# static fields
.field private static final u:[Lcom/roblox/client/landing/a;


# instance fields
.field private q:Lcom/roblox/client/landing/c$a;

.field private r:Lcom/roblox/client/u/a$a;

.field private t:Lcom/roblox/abtesting/a;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/view/View;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/roblox/client/landing/a;

    .line 57
    new-instance v1, Lcom/roblox/client/landing/a;

    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_CarouselGamesTitle:I

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_CarouselGamesText:I

    sget v4, Lcom/roblox/client/o$e;->img_landing_carousel_game:I

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/client/landing/a;-><init>(III)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/roblox/client/landing/a;

    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_CarouselChatTitle:I

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_CarouselChatText:I

    sget v4, Lcom/roblox/client/o$e;->img_landing_carousel_chat:I

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/client/landing/a;-><init>(III)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/roblox/client/landing/a;

    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_CarouselAvatarTitle:I

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_CarouselAvatarText:I

    sget v4, Lcom/roblox/client/o$e;->img_landing_carousel_avatar:I

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/client/landing/a;-><init>(III)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/roblox/client/landing/ActivityStartMVP;->u:[Lcom/roblox/client/landing/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/u/f;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->y:Z

    return-void
.end method

.method private a(Lcom/roblox/client/startup/e;)V
    .locals 0

    .line 237
    invoke-static {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->startActivity(Landroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->finish()V

    return-void
.end method

.method private a(Lcom/roblox/client/u/h;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->r:Lcom/roblox/client/u/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/u/a$a;->a(Lcom/roblox/client/u/h;Lcom/roblox/client/u/c;)V

    return-void
.end method

.method private r()V
    .locals 7

    .line 170
    sget v0, Lcom/roblox/client/o$f;->landing_view_pager:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 173
    new-instance v1, Lcom/roblox/client/landing/ActivityStartMVP$a;

    .line 175
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->j()Landroidx/fragment/app/g;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/landing/ActivityStartMVP;->u:[Lcom/roblox/client/landing/a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/landing/ActivityStartMVP$a;-><init>(Lcom/roblox/client/landing/ActivityStartMVP;Landroidx/fragment/app/g;[Lcom/roblox/client/landing/a;Lcom/roblox/client/landing/ActivityStartMVP$1;)V

    .line 173
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 178
    sget v1, Lcom/roblox/client/o$f;->landing_tab_dots:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x1

    .line 179
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 182
    :cond_0
    sget v0, Lcom/roblox/client/o$f;->tvStartFinePrint:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/roblox/client/ae/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ANIMATE_BUTTONS_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    sget v0, Lcom/roblox/client/o$f;->landing_bottom_content:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 191
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 192
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 193
    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    :cond_2
    sget v0, Lcom/roblox/client/o$f;->landing_center_content:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 200
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 201
    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    :cond_3
    sget v0, Lcom/roblox/client/o$f;->signup_button:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    .line 206
    sget v0, Lcom/roblox/client/o$f;->about_button:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->x:Landroid/view/View;

    .line 207
    sget v0, Lcom/roblox/client/o$f;->login_button:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->w:Landroid/widget/Button;

    .line 209
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Action_Login:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Action_SignUp:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private s()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/landing/c$a;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->q:Lcom/roblox/client/landing/c$a;

    return-void
.end method

.method public a(Lcom/roblox/client/u/a$a;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->r:Lcom/roblox/client/u/a$a;

    return-void
.end method

.method public a(Lcom/roblox/client/u/e;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->s:Lcom/roblox/client/u/e;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/roblox/client/landing/c$a;

    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/landing/c$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->b(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 293
    sget-object p1, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/roblox/client/startup/e;->f:Lcom/roblox/client/startup/e;

    .line 298
    :goto_0
    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/startup/e;)V

    return-void
.end method

.method protected m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 2

    const-string v0, "ActivityStartMVP"

    const-string v1, "showLoginDialog: Launch Login MVP activity..."

    .line 266
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/u/f;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x277d

    if-ne p1, p3, :cond_2

    const/16 p1, 0x66

    if-eq p2, p1, :cond_1

    const/16 p1, 0x67

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    sget-object p1, Lcom/roblox/client/landing/c$b;->d:Lcom/roblox/client/landing/c$b;

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/u/h;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->q:Lcom/roblox/client/landing/c$a;

    invoke-interface {p1}, Lcom/roblox/client/landing/c$a;->a()V

    goto :goto_0

    :cond_2
    const/16 p3, 0x277f

    if-ne p1, p3, :cond_5

    const/16 p1, 0x68

    if-eq p2, p1, :cond_4

    const/16 p1, 0x69

    if-eq p2, p1, :cond_3

    goto :goto_0

    .line 159
    :cond_3
    sget-object p1, Lcom/roblox/client/landing/c$b;->a:Lcom/roblox/client/landing/c$b;

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/u/h;)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->q:Lcom/roblox/client/landing/c$a;

    invoke-interface {p1}, Lcom/roblox/client/landing/c$a;->b()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->login_button:I

    if-ne v0, v1, :cond_0

    .line 227
    sget-object p1, Lcom/roblox/client/landing/c$b;->b:Lcom/roblox/client/landing/c$b;

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/u/h;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->signup_button:I

    if-ne v0, v1, :cond_1

    .line 229
    sget-object p1, Lcom/roblox/client/landing/c$b;->a:Lcom/roblox/client/landing/c$b;

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/u/h;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/roblox/client/o$f;->about_button:I

    if-ne p1, v0, :cond_2

    .line 231
    sget-object p1, Lcom/roblox/client/landing/c$b;->c:Lcom/roblox/client/landing/c$b;

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/u/h;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/roblox/client/u/f;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ActivityStartMVP"

    const-string v0, "onCreate: no AppSettings - Start Splash..."

    .line 84
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object p1, Lcom/roblox/client/startup/e;->b:Lcom/roblox/client/startup/e;

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->a(Lcom/roblox/client/startup/e;)V

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/roblox/client/b;->an()Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->ao()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    :cond_2
    sget p1, Lcom/roblox/client/o$g;->activity_start_phone_new:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->setContentView(I)V

    goto :goto_0

    .line 96
    :cond_3
    sget p1, Lcom/roblox/client/o$g;->activity_start:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/ActivityStartMVP;->setContentView(I)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sput-object p1, Lcom/roblox/client/x;->a:Landroid/util/DisplayMetrics;

    .line 101
    invoke-direct {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->r()V

    .line 102
    invoke-direct {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->s()V

    .line 104
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "send_app_input_focus_to_lua"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->y:Z

    .line 106
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->t:Lcom/roblox/abtesting/a;

    .line 107
    new-instance p1, Lcom/roblox/client/landing/d;

    invoke-direct {p1, p0}, Lcom/roblox/client/landing/d;-><init>(Lcom/roblox/client/landing/c$c;)V

    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP;->q:Lcom/roblox/client/landing/c$a;

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 134
    invoke-super {p0}, Lcom/roblox/client/u/f;->onPause()V

    const-string v0, "ActivityStartMVP"

    const-string v1, "onPause()"

    .line 135
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->y:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/engine/b/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/roblox/engine/b/a;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/b/c;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 117
    invoke-super {p0}, Lcom/roblox/client/u/f;->onResume()V

    const-string v0, "ActivityStartMVP"

    const-string v1, "onResume()"

    .line 118
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/roblox/client/locale/b;->d()Lcom/roblox/client/locale/b$a;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/locale/b$a;->b:Lcom/roblox/client/locale/b$a;

    if-ne v1, v2, :cond_1

    .line 121
    invoke-virtual {v0, p0}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;)Lcom/roblox/client/locale/f;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/roblox/client/locale/b;->b(Lcom/roblox/client/locale/f;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/roblox/client/landing/ActivityStartMVP;->recreate()V

    .line 124
    :cond_0
    sget-object v1, Lcom/roblox/client/locale/b$a;->a:Lcom/roblox/client/locale/b$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/b;->a(Lcom/roblox/client/locale/b$a;)V

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->y:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/engine/b/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/engine/b/a;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/b/c;)V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->t:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 273
    invoke-static {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP;->t:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 277
    invoke-static {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {p0}, Lcom/roblox/client/signup/ActivitySignUp;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/landing/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/ActivityStartMVP;->startActivity(Landroid/content/Intent;)V

    .line 288
    sget v0, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v1, Lcom/roblox/client/o$a;->stay:I

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/landing/ActivityStartMVP;->overridePendingTransition(II)V

    return-void
.end method
