.class public Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;
.super Lcom/roblox/client/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;
    }
.end annotation


# instance fields
.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;I)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0, p2}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 71
    sget v1, Lcom/roblox/client/o$f;->info_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$2;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$2;-><init>(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v1, Lcom/roblox/client/o$f;->info_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    iget v2, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    sget v1, Lcom/roblox/client/o$f;->main_info_text_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    iget v2, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->b:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/roblox/client/locale/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 82
    sget v0, Lcom/roblox/client/o$f;->sub_info_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget v1, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->c:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/roblox/client/locale/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget v0, Lcom/roblox/client/o$f;->permission_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iget v1, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->d:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/roblox/client/locale/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget v1, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 87
    iget p1, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->d:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/roblox/client/locale/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method private a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->p()V

    .line 172
    iget-object v0, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->f:Ljava/lang/String;

    const-string v1, "chooseYourAdventure"

    invoke-static {v1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget p1, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->e:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V

    return-void
.end method

.method private n()[Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    .line 113
    new-instance v8, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    sget v2, Lcom/roblox/client/o$e;->choose_adv_customize:I

    sget v3, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_CustomizeAvatar:I

    sget v4, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_AwesomeAvatar:I

    const/4 v5, -0x1

    const/16 v6, 0x66

    const-string v7, "avatarButton"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;-><init>(IIIIILjava/lang/String;)V

    const/4 v1, 0x2

    aput-object v8, v0, v1

    .line 120
    invoke-static {}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    sget v4, Lcom/roblox/client/o$e;->choose_adv_nearby:I

    sget v5, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_ImNearSomeone:I

    sget v6, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_FindNearbyUsers:I

    sget v7, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_RequiresMicrophone:I

    const/16 v8, 0x64

    const-string v9, "nearbyButton"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;-><init>(IIIIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 131
    :goto_0
    invoke-static {}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    sget v5, Lcom/roblox/client/o$e;->choose_adv_vcontacts:I

    sget v6, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_KnowSomeoneOnRoblox:I

    sget v7, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_LookThroughYourContacts:I

    sget v8, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_RequiresContacts:I

    const/16 v9, 0x65

    const-string v10, "cffButton"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;-><init>(IIIIILjava/lang/String;)V

    .line 142
    :cond_1
    new-instance v10, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    const/4 v4, -0x1

    sget v5, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_ShowMeTheGames:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x67

    const-string v9, "gamesButton"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;-><init>(IIIIILjava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->b()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    aput-object v1, v0, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    :goto_1
    const/4 v1, 0x3

    aput-object v10, v0, v1

    return-object v0
.end method

.method private p()V
    .locals 4

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->q:J

    sub-long/2addr v0, v2

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v3, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-direct {v3, v1, v0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "timeElapsedToSelection"

    const-string v1, "chooseYourAdventure"

    .line 167
    invoke-static {v0, v1, v2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/roblox/client/q;->onBackPressed()V

    const-string v0, "chooseYourAdventure"

    const-string v1, "backButton"

    .line 106
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->p()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 37
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/roblox/client/o$g;->activity_choose_your_adventure:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->n()[Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;

    move-result-object p1

    .line 42
    sget v0, Lcom/roblox/client/o$f;->title_text_view:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    sget v1, Lcom/roblox/client/o$j;->Features_ChooseAdv_Label_WhatsNext:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/roblox/client/locale/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 47
    aget-object v0, p1, v2

    sget v1, Lcom/roblox/client/o$f;->choose_your_adv_first_button:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;I)Landroid/view/View;

    .line 48
    aget-object v0, p1, v3

    sget v1, Lcom/roblox/client/o$f;->choose_your_adv_second_button:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;I)Landroid/view/View;

    const/4 v0, 0x2

    .line 49
    aget-object v0, p1, v0

    sget v1, Lcom/roblox/client/o$f;->choose_your_adv_third_button:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->a(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;I)Landroid/view/View;

    const/4 v0, 0x3

    .line 51
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 53
    sget v0, Lcom/roblox/client/o$f;->games_button:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 54
    iget v1, p1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/roblox/client/locale/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$1;-><init>(Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure$a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;->q:J

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    const-string v0, "chooseYourAdventure"

    .line 99
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method
