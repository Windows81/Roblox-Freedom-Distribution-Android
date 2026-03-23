.class public Lcom/roblox/client/ActivityNativeMain;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/roblox/client/components/j;
.implements Lcom/roblox/client/feature/c;
.implements Lcom/roblox/client/i/e$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ActivityNativeMain$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private final D:Lcom/roblox/client/http/m;

.field private m:Z

.field private p:Lcom/roblox/client/feature/FeatureState;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/roblox/client/feature/l;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Landroid/view/View;

.field private u:Landroid/content/ServiceConnection;

.field private v:Lcom/roblox/client/components/e;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    .line 140
    const v0, 0x7f070750

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:I

    .line 141
    const v0, 0x7f070752

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:I

    .line 161
    iput-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->B:Z

    .line 164
    iput-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->C:Z

    .line 620
    new-instance v0, Lcom/roblox/client/ActivityNativeMain$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/ActivityNativeMain$3;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->D:Lcom/roblox/client/http/m;

    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    .line 632
    const-string v0, "rbx.main"

    const-string v1, "ActivityNativeMain.internalOnResume()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    .line 639
    invoke-static {}, Lcom/roblox/client/o;->a()Lcom/roblox/client/o;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$4;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/o;->a(Lcom/roblox/client/o$b;)V

    .line 650
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-static {p0}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->D:Lcom/roblox/client/http/m;

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/http/m;)V

    .line 655
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->a(Lcom/roblox/client/i/e$c;)V

    .line 657
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->x:Z

    if-eqz v0, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->B()V

    .line 662
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    invoke-static {}, Lcom/roblox/client/i/b;->d()Lcom/roblox/client/i/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/b;->b(Landroid/app/Activity;)V

    .line 666
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 669
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Landroid/content/Intent;)Lcom/roblox/client/game/a;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_3

    .line 671
    const-string v2, "rbx.main"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalOnResume: Start a game with place ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/roblox/client/game/a;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {v1, p0}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    .line 676
    :cond_3
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 677
    invoke-static {p0}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 678
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Landroid/content/Intent;)V

    .line 682
    :cond_4
    invoke-static {}, Lcom/roblox/client/http/o;->a()V

    .line 685
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(I)V

    .line 687
    invoke-static {}, Lcom/roblox/client/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/r;

    invoke-direct {v1}, Lcom/roblox/client/h/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 690
    :cond_5
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/p;

    invoke-direct {v1}, Lcom/roblox/client/h/p;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 693
    const-string v0, "CHAT_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_6

    .line 696
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/feature/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/feature/a;->a(Z)V

    .line 702
    :cond_6
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v1

    .line 703
    instance-of v0, v1, Lcom/roblox/client/feature/g;

    if-eqz v0, :cond_7

    .line 708
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()Z

    move-object v0, v1

    .line 710
    check-cast v0, Lcom/roblox/client/feature/g;

    invoke-virtual {v0}, Lcom/roblox/client/feature/g;->h()Lcom/roblox/client/f;

    move-result-object v0

    if-nez v0, :cond_7

    .line 716
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v1}, Lcom/roblox/client/feature/l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/roblox/client/feature/l;->a(Lcom/roblox/client/feature/FeatureState;)V

    .line 718
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Z)V

    .line 721
    :cond_7
    return-void
.end method

.method private B()V
    .locals 10

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 726
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->C()J

    move-result-wide v0

    const-wide/16 v6, 0x7

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    .line 727
    const-string v0, "GAMES_TAG"

    const-string v1, "games"

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, v5}, Lcom/roblox/client/ActivityNativeMain;->c(Z)V

    .line 734
    :cond_0
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    if-eqz v0, :cond_4

    .line 736
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->H()J

    move-result-wide v0

    .line 737
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 741
    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->l()V

    move v0, v5

    .line 750
    :goto_1
    if-nez v0, :cond_2

    .line 751
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->D()V

    .line 755
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->x()V

    .line 757
    iput-boolean v4, p0, Lcom/roblox/client/ActivityNativeMain;->x:Z

    .line 758
    return-void

    :cond_3
    move-wide v0, v2

    .line 738
    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method private C()J
    .locals 6

    .prologue
    .line 761
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/c;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 763
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Lcom/roblox/client/b;->at()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/n;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 798
    iget-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    if-nez v1, :cond_0

    .line 799
    invoke-static {}, Lcom/roblox/client/b;->an()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 800
    invoke-static {}, Lcom/roblox/client/c/a;->a()Lcom/roblox/client/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/c/a;->a(Landroid/app/Activity;)V

    .line 803
    :cond_0
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 806
    const-string v0, "friends?contactupsell=cff"

    .line 808
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "friends?contactupsell=cff"

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 812
    const-string v0, "nativeMain"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-static {}, Lcom/roblox/client/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const-string v0, "rbx.main"

    const-string v1, "showLoginDialog: Launch Login MVP activity..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Landroid/app/Activity;)V

    .line 821
    :goto_0
    return-void

    .line 818
    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "showLoginDialog: Launch Login activity..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {p0}, Lcom/roblox/client/login/ActivityLogin;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private G()V
    .locals 4

    .prologue
    .line 867
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 868
    const-string v1, "saw_signup_pop_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 869
    return-void
.end method

.method private H()J
    .locals 4

    .prologue
    .line 872
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 873
    const-string v1, "saw_signup_pop_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private I()V
    .locals 1

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->L()V

    .line 987
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->M()V

    .line 988
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->O()V

    .line 991
    invoke-static {}, Lcom/roblox/client/b;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->R()V

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->N()V

    .line 1000
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->P()V

    .line 1001
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Q()V

    .line 1002
    return-void

    .line 997
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->R()V

    goto :goto_0
.end method

.method private J()V
    .locals 13

    .prologue
    .line 1006
    new-instance v9, Lcom/roblox/client/feature/FeatureState;

    const-string v0, "MORE_TAG"

    invoke-direct {v9, v0}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 1007
    new-instance v10, Lcom/roblox/client/feature/FeatureState;

    const-string v0, "ABOUT_TAG"

    invoke-direct {v10, v0}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 1010
    iget-object v11, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v12, "FRIENDS_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "FRIENDS_TAG"

    const v3, 0x7f0e0102

    const v4, 0x7f080075

    .line 1015
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->friendsUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabFriends"

    .line 1017
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v7, 0x1

    .line 1018
    :goto_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v8, v9

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/roblox/client/feature/FeatureState;)V

    .line 1010
    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v11, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v12, "CATALOG_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "CATALOG_TAG"

    const v3, 0x7f0e00fc

    const v4, 0x7f080075

    .line 1025
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->catalogUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabCatalog"

    .line 1027
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v7, 0x1

    .line 1028
    :goto_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, v9

    :goto_3
    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/roblox/client/feature/FeatureState;)V

    .line 1020
    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v11, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v12, "MESSAGES_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "MESSAGES_TAG"

    const v3, 0x7f0e010c

    const v4, 0x7f080075

    .line 1035
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->messagesUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMessages"

    .line 1037
    invoke-static {}, Lcom/roblox/client/b;->f()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v7, 0x1

    .line 1038
    :goto_4
    invoke-static {}, Lcom/roblox/client/b;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v8, v9

    :goto_5
    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/roblox/client/feature/FeatureState;)V

    .line 1030
    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-static {}, Lcom/roblox/client/n/a;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1041
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "MORE_TAG"

    new-instance v2, Lcom/roblox/client/feature/g;

    const-string v3, "MORE_TAG"

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/g;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :goto_6
    invoke-static {}, Lcom/roblox/client/n/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1048
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "HOME_TAG"

    new-instance v2, Lcom/roblox/client/feature/g;

    const-string v3, "HOME_TAG"

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/g;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    :goto_7
    invoke-static {}, Lcom/roblox/client/n/a;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1060
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "GAMES_TAG"

    new-instance v2, Lcom/roblox/client/feature/g;

    const-string v3, "GAMES_TAG"

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/g;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    :goto_8
    invoke-static {}, Lcom/roblox/client/n/a;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1072
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "CHAT_TAG"

    new-instance v2, Lcom/roblox/client/feature/g;

    const-string v3, "CHAT_TAG"

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/g;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "AVATAR_EDITOR_TAG"

    new-instance v2, Lcom/roblox/client/feature/g;

    const-string v3, "AVATAR_EDITOR_TAG"

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/g;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :goto_9
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "SETTINGS_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "SETTINGS_TAG"

    const v3, 0x7f0e0116

    const v4, 0x7f080075

    .line 1086
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->settingsUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabSettings"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1081
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "PROFILE_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "PROFILE_TAG"

    const v3, 0x7f0e0114

    const v4, 0x7f080075

    .line 1095
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->profileUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabProfile"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1090
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "GROUPS_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "GROUPS_TAG"

    const v3, 0x7f0e0105

    const v4, 0x7f080075

    .line 1104
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->groupsUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabGroups"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1099
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "INVENTORY_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "INVENTORY_TAG"

    const v3, 0x7f0e0108

    const v4, 0x7f080075

    .line 1113
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->inventoryUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabInventory"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1108
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "BLOG_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "BLOG_TAG"

    const v3, 0x7f0e00f9

    const v4, 0x7f080075

    .line 1122
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->blogUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabBlog"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1117
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "HELP_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "HELP_TAG"

    const v3, 0x7f0e0106

    const v4, 0x7f080075

    .line 1131
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->helpUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabHelp"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1126
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "EVENTS_TAG"

    new-instance v2, Lcom/roblox/client/feature/b;

    const-string v3, "HELP_TAG"

    const v4, 0x7f080075

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/b;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "CHARACTER_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "CHARACTER_TAG"

    const v3, 0x7f0e00fd

    const v4, 0x7f080075

    .line 1146
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->characterUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabCharacter"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1141
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "FORUM_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "FORUM_TAG"

    const v3, 0x7f0e0101

    const v4, 0x7f080075

    .line 1155
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->forumUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabForum"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1150
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "TRADE_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "TRADE_TAG"

    const v3, 0x7f0e0119

    const v4, 0x7f080075

    .line 1164
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->tradeUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabTrade"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1159
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "ABOUT_TAG"

    new-instance v2, Lcom/roblox/client/feature/h;

    const-string v3, "ABOUT_TAG"

    const v4, 0x7f080075

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/h;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "ABOUT_US_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "ABOUT_US_TAG"

    const v3, 0x7f0e00f6

    const v4, 0x7f080075

    .line 1178
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->aboutUsUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMoreAboutUs"

    move-object v1, p0

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1173
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "CAREERS_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "CAREERS_TAG"

    const v3, 0x7f0e00fb

    const v4, 0x7f080075

    .line 1187
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->careersUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMoreCareer"

    move-object v1, p0

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1182
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "PARENTS_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "PARENTS_TAG"

    const v3, 0x7f0e0111

    const v4, 0x7f080075

    .line 1196
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->parentsUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMoreParents"

    move-object v1, p0

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1191
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "TERMS_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "TERMS_TAG"

    const v3, 0x7f0e0117

    const v4, 0x7f080075

    .line 1205
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->termsUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMoreTerms"

    move-object v1, p0

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1200
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v11, "PRIVACY_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "PRIVACY_TAG"

    const v3, 0x7f0e0112

    const v4, 0x7f080075

    .line 1214
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->privacyUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMorePrivacy"

    move-object v1, p0

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1209
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v10, "CREATE_GAMES_TAG"

    new-instance v0, Lcom/roblox/client/feature/e;

    const-string v2, "CREATE_GAMES_TAG"

    const v3, 0x7f0e00ff

    const v4, 0x7f080075

    .line 1223
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->createGamesUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabMoreCreateGames"

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1218
    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    return-void

    .line 1017
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1018
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1027
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1028
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1037
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1038
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1043
    :cond_7
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "MORE_TAG"

    new-instance v2, Lcom/roblox/client/feature/i;

    const-string v3, "MORE_TAG"

    const v4, 0x7f080075

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/i;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1050
    :cond_8
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v7, "HOME_TAG"

    new-instance v0, Lcom/roblox/client/feature/f;

    const-string v2, "HOME_TAG"

    const v3, 0x7f080075

    .line 1054
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->homeUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/feature/f;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1050
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1062
    :cond_9
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v7, "GAMES_TAG"

    new-instance v0, Lcom/roblox/client/feature/d;

    const-string v2, "GAMES_TAG"

    const v3, 0x7f080075

    .line 1066
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->gamesUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/feature/d;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1062
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 1076
    :cond_a
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "CHAT_TAG"

    new-instance v2, Lcom/roblox/client/feature/a;

    const-string v3, "CHAT_TAG"

    const v4, 0x7f080075

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/a;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "AVATAR_EDITOR_TAG"

    new-instance v2, Lcom/roblox/client/feature/g;

    const-string v3, "AVATAR_EDITOR_TAG"

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/g;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9
.end method

.method private K()V
    .locals 11

    .prologue
    const v4, 0x7f080075

    .line 1233
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    const-string v1, "SETTINGS_GROUPS_TAG"

    new-instance v2, Lcom/roblox/client/feature/k;

    const-string v3, "SETTINGS_GROUPS_TAG"

    invoke-direct {v2, p0, v3, v4}, Lcom/roblox/client/feature/k;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/roblox/client/k/e;

    .line 1243
    iget-object v9, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/roblox/client/k/e;->c()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/roblox/client/feature/e;

    .line 1245
    invoke-virtual {v1}, Lcom/roblox/client/k/e;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0116

    .line 1248
    invoke-virtual {v1}, Lcom/roblox/client/k/e;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tabSettings"

    new-instance v7, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "SETTINGS_GROUPS_TAG"

    invoke-direct {v7, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/feature/e;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V

    .line 1243
    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1253
    :cond_0
    return-void
.end method

.method private L()V
    .locals 9

    .prologue
    .line 1256
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f080121

    const-string v2, "HOME_TAG"

    const v3, 0x7f0e0107

    const v4, 0x7f070747

    const v5, 0x7f070748

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1258
    return-void
.end method

.method private M()V
    .locals 9

    .prologue
    .line 1261
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f080120

    const-string v2, "GAMES_TAG"

    const v3, 0x7f0e0103

    const v4, 0x7f070743

    const v5, 0x7f070744

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1263
    return-void
.end method

.method private N()V
    .locals 9

    .prologue
    .line 1266
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f08011f

    const-string v2, "FRIENDS_TAG"

    const v3, 0x7f0e0102

    const v4, 0x7f070741

    const v5, 0x7f070742

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1268
    return-void
.end method

.method private O()V
    .locals 9

    .prologue
    .line 1271
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f08011d

    const-string v2, "CATALOG_TAG"

    const v3, 0x7f0e00fc

    const v4, 0x7f070729

    const v5, 0x7f07072b

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1273
    return-void
.end method

.method private P()V
    .locals 9

    .prologue
    .line 1276
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f08011e

    const-string v2, "CHAT_TAG"

    const v3, 0x7f0e00fe

    const v4, 0x7f07072d

    const v5, 0x7f07072f

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1278
    return-void
.end method

.method private Q()V
    .locals 9

    .prologue
    .line 1282
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f080122

    const-string v2, "MORE_TAG"

    const v3, 0x7f0e010d

    iget v4, p0, Lcom/roblox/client/ActivityNativeMain;->r:I

    iget v5, p0, Lcom/roblox/client/ActivityNativeMain;->s:I

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1284
    return-void
.end method

.method private R()V
    .locals 9

    .prologue
    .line 1287
    iget-object v8, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const v1, 0x7f08011c

    const-string v2, "AVATAR_EDITOR_TAG"

    const v3, 0x7f0e00f8

    const v4, 0x7f070723

    const v5, 0x7f070724

    const v6, 0x7f05008c

    const v7, 0x7f050004

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/components/e;->a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V

    .line 1289
    return-void
.end method

.method private S()V
    .locals 3

    .prologue
    .line 1300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e000a

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$9;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$9;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 1301
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00e8

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$8;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$8;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 1308
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$7;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 1314
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1322
    return-void
.end method

.method private T()Lcom/roblox/client/feature/l;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    return-object v0
.end method

.method private U()V
    .locals 3

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1611
    if-eqz v1, :cond_0

    .line 1612
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1613
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1615
    :cond_0
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 1622
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/landing/ActivityStartMVP;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1623
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 1624
    return-void
.end method

.method private W()V
    .locals 3

    .prologue
    .line 1685
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogin: mGuestRequestedTabTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    sget-object v0, Lcom/roblox/client/startup/e;->k:Lcom/roblox/client/startup/e;

    invoke-static {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 1687
    const/16 v1, 0x2776

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1688
    return-void
.end method

.method private X()Z
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->e()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y()V
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Z)V

    .line 1748
    return-void

    .line 1747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/roblox/client/game/a;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1366
    const-string v1, "roblox_createTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1368
    if-eqz p1, :cond_0

    .line 1369
    const-string v1, "game_init_params"

    invoke-static {p1}, Lcom/roblox/client/game/a;->a(Lcom/roblox/client/game/a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1370
    const-string v1, "launchWithProtocol"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1373
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/ActivityNativeMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    return-object p1
.end method

.method private a(JZ)V
    .locals 3

    .prologue
    .line 1563
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigateToConversation() conversation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "CHAT_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 1565
    const-string v1, "CHAT_CONVERSATION_ID"

    invoke-virtual {v0, v1, p1, p2}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;J)V

    .line 1567
    const-string v1, "CHAT_FORCE_OPEN_CONVERSATION"

    invoke-virtual {v0, v1, p3}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;Z)V

    .line 1568
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(Lcom/roblox/client/feature/FeatureState;)V

    .line 1569
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 1956
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1957
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1879
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/OverlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1880
    const-string v1, "URL_EXTRA"

    invoke-static {p1}, Lcom/roblox/client/ActivityNativeMain;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1881
    const-string v1, "TITLE_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1883
    const v0, 0x7f010015

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1884
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1960
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1961
    const-string v1, "URL_EXTRA"

    invoke-static {p1}, Lcom/roblox/client/ActivityNativeMain;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1962
    const-string v1, "TITLE_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1963
    if-eqz p3, :cond_0

    .line 1964
    const-string v1, "USE_STANDARD_OPTIONS_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1966
    :cond_0
    const/16 v1, 0x277e

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1968
    if-eqz p3, :cond_1

    .line 1970
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1974
    :goto_0
    return-void

    .line 1972
    :cond_1
    const v0, 0x7f010015

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/h;Lcom/roblox/client/feature/l;Z)V
    .locals 2

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1341
    instance-of v1, p1, Lcom/roblox/client/feature/g;

    if-eqz v1, :cond_0

    .line 1342
    check-cast p1, Lcom/roblox/client/feature/g;

    invoke-virtual {p1}, Lcom/roblox/client/feature/g;->h()Lcom/roblox/client/f;

    move-result-object v0

    .line 1346
    :cond_0
    if-eqz v0, :cond_2

    .line 1347
    if-eqz p2, :cond_1

    .line 1348
    invoke-virtual {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->d()I

    .line 1350
    :cond_1
    check-cast v0, Lcom/roblox/client/e;

    invoke-virtual {v0}, Lcom/roblox/client/e;->a()V

    .line 1352
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->z()V

    return-void
.end method

.method public static a(Lcom/roblox/client/ActivityNativeMain;Z)V
    .locals 1

    .prologue
    .line 1333
    const-string v0, "AVATAR_EDITOR_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/support/v4/app/h;Lcom/roblox/client/feature/l;Z)V

    .line 1334
    return-void
.end method

.method public static a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 1378
    const/4 v0, 0x1

    sput-boolean v0, Lcom/roblox/client/RobloxSettings;->dontReloadMorePage:Z

    .line 1379
    const-string v0, "GameLaunch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLaunchGame: activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-static {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    .line 1381
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1588
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {v0, p1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 1589
    const-string v1, "WEB_URL"

    invoke-static {p2}, Lcom/roblox/client/ActivityNativeMain;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(Lcom/roblox/client/feature/FeatureState;)V

    .line 1591
    return-void
.end method

.method private b(JZ)V
    .locals 3

    .prologue
    .line 1572
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigateToUserConversation() user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "CHAT_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 1574
    const-string v1, "USER_ID_EXTRA"

    invoke-virtual {v0, v1, p1, p2}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;J)V

    .line 1576
    const-string v1, "CHAT_FORCE_OPEN_CONVERSATION"

    invoke-virtual {v0, v1, p3}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;Z)V

    .line 1577
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(Lcom/roblox/client/feature/FeatureState;)V

    .line 1578
    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1952
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1953
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->K()V

    return-void
.end method

.method private static b(Lcom/roblox/client/game/a;Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 1384
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1385
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    .line 1387
    if-eqz p0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/roblox/client/game/a;->a()J

    move-result-wide v2

    .line 1389
    const-string v4, "rbx.main"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launching PlaceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Debugger:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v0, "attached"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_0
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    const/16 v1, 0x2778

    invoke-virtual {v0, p1, p0, v1}, Lcom/roblox/client/game/b;->a(Landroid/app/Activity;Lcom/roblox/client/game/a;I)V

    .line 1395
    return-void

    .line 1389
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/ActivityNativeMain;Z)Z
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/roblox/client/ActivityNativeMain;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/ActivityNativeMain;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Lcom/roblox/client/game/a;
    .locals 6

    .prologue
    .line 773
    if-eqz p1, :cond_0

    const-string v0, "launchWithProtocol"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const-string v0, "game_init_params"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_0

    .line 779
    const-string v1, "roblox_createTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 780
    iget-wide v4, p0, Lcom/roblox/client/ActivityNativeMain;->z:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 781
    iput-wide v2, p0, Lcom/roblox/client/ActivityNativeMain;->z:J

    .line 787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/roblox/client/feature/FeatureState;)V
    .locals 4

    .prologue
    .line 1478
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    .line 1479
    const-string v1, "rbx.main"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANM.loadTab() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GAMES_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->c()Lcom/roblox/client/components/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    .line 1486
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->m()V

    .line 1488
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const-string v1, "GAMES_TAG"

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/e;->c(Ljava/lang/String;)I

    .line 1493
    :goto_0
    return-void

    .line 1491
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1721
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->e()Landroid/widget/TabWidget;

    move-result-object v0

    .line 1722
    if-eqz p1, :cond_1

    .line 1723
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1725
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(I)V

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1730
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1731
    invoke-direct {p0, v2}, Lcom/roblox/client/ActivityNativeMain;->d(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/roblox/client/ActivityNativeMain;)Lcom/roblox/client/components/e;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1742
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1743
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1744
    return-void
.end method

.method private d(Lcom/roblox/client/feature/FeatureState;)V
    .locals 3

    .prologue
    .line 1594
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigateToFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundleSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->a()V

    .line 1598
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/e;->c(Ljava/lang/String;)I

    move-result v0

    .line 1599
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const-string v1, "MORE_TAG"

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/e;->c(Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->b()V

    .line 1605
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 1606
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 976
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 977
    const-string v1, "URL_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 979
    const v0, 0x7f010015

    const v1, 0x7f010016

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->overridePendingTransition(II)V

    .line 980
    return-void
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 877
    if-eqz p1, :cond_0

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/roblox/client/feature/l;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/feature/l;

    return-object v0
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 1752
    invoke-static {}, Lcom/roblox/client/n/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1754
    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1757
    const-string v1, "CHAT_TAG"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;I)V

    .line 1758
    return-void

    .line 1752
    :cond_0
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->g()I

    move-result v0

    goto :goto_0
.end method

.method private e(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    .line 883
    :try_start_0
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 905
    :cond_1
    :goto_1
    return-void

    .line 883
    :sswitch_0
    const-string v1, "FriendRequestReceived"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "FriendRequestAccepted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v1, "ChatNewMessage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "PrivateMessageReceived"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 885
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->g(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 888
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->g(Landroid/content/Intent;)V

    goto :goto_1

    .line 891
    :pswitch_2
    const-string v0, "EXTRA_CONVERSATION_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 892
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 893
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/ActivityNativeMain;->a(JZ)V

    goto :goto_1

    .line 897
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->f(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 883
    nop

    :sswitch_data_0
    .sparse-switch
        0x253fa4b8 -> :sswitch_1
        0x3766c7df -> :sswitch_2
        0x3ea07f25 -> :sswitch_3
        0x74fceef2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic e(Lcom/roblox/client/ActivityNativeMain;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->C:Z

    return v0
.end method

.method private f(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 910
    const-string v0, "EXTRA_CONVERSATION_ID"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 912
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 913
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->messageInboxUrl()Ljava/lang/String;

    move-result-object v0

    .line 917
    :goto_0
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(Ljava/lang/String;)V

    .line 918
    return-void

    .line 915
    :cond_0
    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->privateMessageUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Y()V

    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 928
    const/4 v0, 0x0

    .line 929
    const-string v4, "EXTRA_NOTIFICATION_USER_ID"

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 930
    const-string v6, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 931
    const-string v7, "EXTRA_STACKED_NOTIFICATION"

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 933
    if-nez v6, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 972
    :goto_0
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(Ljava/lang/String;)V

    .line 973
    return-void

    .line 936
    :cond_0
    if-nez v7, :cond_4

    .line 938
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 940
    :pswitch_0
    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 942
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->getUserFriendRequestsUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 938
    :sswitch_0
    const-string v3, "FriendRequestReceived"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v1, "FriendRequestAccepted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    goto :goto_1

    .line 945
    :cond_2
    invoke-static {v4, v5}, Lcom/roblox/client/RobloxSettings;->getUserProfileUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 949
    :pswitch_1
    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    .line 951
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->getUserFriendsUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_3
    invoke-static {v4, v5}, Lcom/roblox/client/RobloxSettings;->getUserProfileUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 960
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_5
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 963
    :pswitch_2
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->getUserFriendRequestsUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 960
    :sswitch_2
    const-string v3, "FriendRequestReceived"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :sswitch_3
    const-string v1, "FriendRequestAccepted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    .line 967
    :pswitch_3
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->getUserFriendsUrl(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 938
    :sswitch_data_0
    .sparse-switch
        0x253fa4b8 -> :sswitch_1
        0x74fceef2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 960
    :sswitch_data_1
    .sparse-switch
        0x253fa4b8 -> :sswitch_3
        0x74fceef2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 1628
    instance-of v1, v0, Lcom/roblox/client/feature/j;

    if-eqz v1, :cond_0

    .line 1629
    check-cast v0, Lcom/roblox/client/feature/j;

    invoke-virtual {v0, p1}, Lcom/roblox/client/feature/j;->b(Ljava/lang/String;)V

    .line 1631
    :cond_0
    return-void
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1888
    if-eqz p0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1889
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getBaseUrlValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1895
    :cond_0
    :goto_0
    return-object p0

    .line 1892
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    const v2, 0x7f0800e9

    const/4 v3, -0x1

    .line 248
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 249
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 250
    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    iput v2, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    .line 254
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 256
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    const-string v2, "rbx.main"

    const-string v3, "createGlAppsFrame() apps frame created"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "createGlAppsFrame() using alternate root view. Bad!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v0, 0x7f080077

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->A:I

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 465
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMainTabs: tabs-loaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/roblox/client/ActivityNativeMain;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->m:Z

    if-eqz v0, :cond_2

    .line 467
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMainTabs: guest => logged-in: guest-requested-tab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    .line 473
    const-string v0, "GAMES_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->v_()V

    .line 477
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/e;->c(Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->w:Ljava/lang/String;

    .line 483
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/y;

    invoke-direct {v1}, Lcom/roblox/client/e/y;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->m:Z

    .line 489
    const-string v0, "rbx.main"

    const-string v1, "Setting up the main tabs."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->f()V

    .line 492
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->a()V

    .line 494
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->I()V

    .line 495
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->J()V

    .line 497
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0, p0}, Lcom/roblox/client/components/e;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 498
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0, p0}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/j;)V

    .line 502
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    if-eqz v0, :cond_6

    .line 504
    const-string v0, "rbx.main"

    const-string v1, "Restoring saved instance."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    .line 513
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/e;->c(Ljava/lang/String;)I

    move-result v1

    .line 514
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 516
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const-string v2, "MORE_TAG"

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/e;->c(Ljava/lang/String;)I

    .line 520
    :cond_3
    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v1

    instance-of v1, v1, Lcom/roblox/client/feature/g;

    .line 523
    if-nez v1, :cond_4

    .line 524
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->x()V

    .line 528
    :cond_4
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    .line 531
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->b()V

    .line 533
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->z()V

    .line 536
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->h()Lcom/roblox/client/q/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/a;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 538
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/k;

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$1;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-direct {v1, v2}, Lcom/roblox/client/h/k;-><init>(Lcom/roblox/client/h/k$a;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 546
    :cond_5
    invoke-static {}, Lcom/roblox/client/b;->bF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/l;

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$2;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-direct {v1, v2}, Lcom/roblox/client/h/l;-><init>(Lcom/roblox/client/h/l$a;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    goto/16 :goto_0

    .line 506
    :cond_6
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 508
    :cond_7
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "GAMES_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :cond_8
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "HOME_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private x()V
    .locals 4

    .prologue
    .line 558
    invoke-static {}, Lcom/roblox/client/b;->bR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x0

    .line 561
    invoke-static {}, Lcom/roblox/client/n/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    const-string v0, "CHAT_TAG"

    move-object v2, v0

    .line 567
    :goto_0
    if-eqz v2, :cond_0

    .line 568
    invoke-direct {p0, v2}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v1

    .line 569
    instance-of v0, v1, Lcom/roblox/client/feature/g;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 570
    check-cast v0, Lcom/roblox/client/feature/g;

    invoke-virtual {v0}, Lcom/roblox/client/feature/g;->h()Lcom/roblox/client/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {v0, v2}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 572
    const-string v2, "Preloading"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;Z)V

    .line 573
    invoke-virtual {v1, v0}, Lcom/roblox/client/feature/l;->a(Lcom/roblox/client/feature/FeatureState;)V

    .line 578
    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private y()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 581
    .line 582
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_0

    .line 584
    const-string v2, "loginAfterSignup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 586
    :cond_0
    return v0
.end method

.method private z()V
    .locals 4

    .prologue
    .line 593
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM.updateMoreTabIcons() email_notif:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isEmailNotificationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " email:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 594
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pass_notif:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 595
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPasswordNotificationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isEmailNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPasswordNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    :cond_1
    const v0, 0x7f070751

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:I

    .line 600
    const v0, 0x7f070753

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:I

    .line 606
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0}, Lcom/roblox/client/components/e;->c()Lcom/roblox/client/components/e$a;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_4

    const-string v1, "MORE_TAG"

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    iget v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:I

    .line 613
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    const-string v2, "MORE_TAG"

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/e;->b(Ljava/lang/String;)Lcom/roblox/client/components/e$a;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_2

    .line 615
    iget v2, p0, Lcom/roblox/client/ActivityNativeMain;->r:I

    iget v3, p0, Lcom/roblox/client/ActivityNativeMain;->s:I

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/components/e$a;->a(II)V

    .line 616
    invoke-virtual {v1}, Lcom/roblox/client/components/e$a;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    :cond_2
    return-void

    .line 602
    :cond_3
    const v0, 0x7f070750

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:I

    .line 603
    const v0, 0x7f070752

    iput v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:I

    goto :goto_0

    .line 610
    :cond_4
    iget v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:I

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1636
    sparse-switch p1, :sswitch_data_0

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1638
    :sswitch_0
    const-string v0, "game_init_params"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 1639
    invoke-static {v0, p0}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    goto :goto_0

    .line 1644
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/ActivityNativeMain;Z)V

    .line 1646
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "login_window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/login/a;

    .line 1647
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/roblox/client/login/a;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1649
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->V()V

    goto :goto_0

    .line 1636
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1525
    if-eqz p2, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 1527
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1528
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 1532
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 1534
    :cond_0
    return-void

    .line 1530
    :cond_1
    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 0

    .prologue
    .line 1497
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 1498
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1432
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM.onTabReselected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->T()Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 1434
    if-eqz v0, :cond_0

    .line 1435
    const-string v1, "MORE_TAG"

    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MORE_TAG"

    invoke-direct {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1437
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "MORE_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->c()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/16 v1, 0x63

    .line 1941
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/e;->b(Ljava/lang/String;)Lcom/roblox/client/components/e$a;

    move-result-object v0

    .line 1942
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->e()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1943
    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->e()Landroid/widget/TextView;

    move-result-object v2

    .line 1944
    if-lez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1945
    if-ge p2, v1, :cond_2

    .line 1946
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    :cond_0
    return-void

    .line 1944
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move p2, v1

    .line 1945
    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 1538
    if-eqz p1, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 1540
    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 1541
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 1543
    :cond_0
    return-void
.end method

.method public b(Lcom/roblox/client/feature/FeatureState;)V
    .locals 2

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v0

    instance-of v0, v0, Lcom/roblox/client/feature/g;

    if-eqz v0, :cond_2

    .line 1504
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    instance-of v0, v0, Lcom/roblox/client/feature/g;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1507
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->a()V

    .line 1515
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 1516
    if-eqz v0, :cond_1

    .line 1517
    invoke-virtual {v0, p1}, Lcom/roblox/client/feature/l;->a(Lcom/roblox/client/feature/FeatureState;)V

    .line 1520
    :cond_1
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    .line 1521
    return-void

    .line 1504
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 1547
    if-eqz p1, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 1549
    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 1550
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 1552
    :cond_0
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->V()V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->S()V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->G()V

    .line 825
    new-instance v0, Lcom/roblox/client/ActivityNativeMain$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/ActivityNativeMain$5;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 841
    new-instance v1, Landroid/support/v7/app/b$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 842
    const v2, 0x7f0e00d8

    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0e00d7

    .line 843
    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0e006c

    .line 844
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0e006d

    .line 845
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 846
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 848
    new-instance v1, Lcom/roblox/client/ActivityNativeMain$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$6;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 863
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 864
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 1295
    invoke-static {p0}, Lcom/roblox/client/signup/ActivitySignUp;->a(Landroid/app/Activity;)V

    .line 1296
    return-void
.end method

.method public n()Lcom/roblox/client/feature/l;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountNotificationsUpdateEvent(Lcom/roblox/client/e/a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1763
    const-string v0, "rbx.main"

    const-string v1, "ANM.onAccountNotificationsUpdateEvent() update"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->z()V

    .line 1765
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 345
    const/16 v0, 0x277e

    if-ne p1, v0, :cond_6

    .line 347
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 349
    if-eqz p3, :cond_0

    .line 351
    const-string v0, "FEATURE_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 354
    const-string v1, "CHAT_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const-string v0, "USER_ID_EXTRA"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 357
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 358
    invoke-direct {p0, v0, v1, v3}, Lcom/roblox/client/ActivityNativeMain;->b(JZ)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v0, "CONVERSATION_ID_EXTRA"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 362
    invoke-direct {p0, v0, v1, v3}, Lcom/roblox/client/ActivityNativeMain;->a(JZ)V

    goto :goto_0

    .line 365
    :cond_2
    const-string v1, "PROFILE_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    const-string v0, "PATH_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0114

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_3
    const-string v1, "SETTINGS_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    const-string v0, "PATH_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0116

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_4
    const-string v1, "PATH_EXTRA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->X()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_5
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_6
    const/16 v0, 0x2776

    if-ne p1, v0, :cond_9

    .line 387
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult from Splash. resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/16 v0, 0x67

    if-eq p2, v0, :cond_7

    const/16 v0, 0x66

    if-ne p2, v0, :cond_8

    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    if-eqz v0, :cond_8

    .line 392
    :cond_7
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->w()V

    goto/16 :goto_0

    .line 394
    :cond_8
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->V()V

    goto/16 :goto_0

    .line 396
    :cond_9
    const/16 v0, 0x2778

    if-ne p1, v0, :cond_c

    .line 398
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->g()Z

    move-result v0

    if-nez v0, :cond_a

    .line 399
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->recreate()V

    .line 401
    :cond_a
    iput-boolean v3, p0, Lcom/roblox/client/ActivityNativeMain;->x:Z

    .line 402
    const-string v1, "Experiment"

    const-string v2, "SettingsAfterGame"

    .line 403
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Loaded"

    .line 402
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_b
    const-string v0, "NotLoaded"

    goto :goto_1

    .line 404
    :cond_c
    const/16 v0, 0x277d

    if-ne p1, v0, :cond_d

    .line 405
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 410
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->W()V

    goto/16 :goto_0

    .line 407
    :pswitch_1
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->F()V

    goto/16 :goto_0

    .line 413
    :cond_d
    const/16 v0, 0x277f

    if-ne p1, v0, :cond_e

    .line 414
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 419
    :pswitch_2
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->W()V

    goto/16 :goto_0

    .line 416
    :pswitch_3
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->m()V

    goto/16 :goto_0

    .line 422
    :cond_e
    const/16 v0, 0x2780

    if-ne p1, v0, :cond_f

    .line 423
    const-string v0, "rbx.main"

    const-string v1, "Back from friends finder."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lcom/roblox/client/b;->bB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->E()V

    goto/16 :goto_0

    .line 429
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 414
    :pswitch_data_1
    .packed-switch 0x68
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackButtonNotConsumedEvent(Lcom/roblox/client/e/d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->k()V

    .line 1800
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const-string v0, "MORE_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MORE_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "MORE_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->k()V

    goto :goto_0
.end method

.method public onChatEnabledChangeEvent(Lcom/roblox/client/e/h;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1918
    const-string v1, "rbx.main"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChatEnabledChangeEvent() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/roblox/client/e/h;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const-string v0, "CHAT_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(Ljava/lang/String;)Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 1922
    instance-of v1, v0, Lcom/roblox/client/feature/a;

    if-eqz v1, :cond_0

    .line 1923
    check-cast v0, Lcom/roblox/client/feature/a;

    .line 1924
    const-string v1, "CHAT_TAG"

    invoke-direct {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1925
    iget v1, p1, Lcom/roblox/client/e/h;->d:I

    sget v2, Lcom/roblox/client/e/h;->b:I

    if-ne v1, v2, :cond_2

    .line 1927
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/feature/a;->a(Z)V

    .line 1938
    :cond_0
    :goto_1
    return-void

    .line 1918
    :cond_1
    const-string v0, "null active tab"

    goto :goto_0

    .line 1929
    :cond_2
    iget v1, p1, Lcom/roblox/client/e/h;->d:I

    sget v2, Lcom/roblox/client/e/h;->c:I

    if-ne v1, v2, :cond_0

    .line 1931
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/feature/a;->a(Z)V

    goto :goto_1

    .line 1935
    :cond_3
    invoke-virtual {v0}, Lcom/roblox/client/feature/a;->b()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "rbx.main"

    const-string v1, "onCreate NativeMain."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->setContentView(I)V

    .line 181
    :goto_0
    if-eqz p1, :cond_4

    .line 182
    const-string v0, "CURRENT_STATE_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/feature/FeatureState;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    .line 184
    const-string v0, "BACK_FROM_GAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->x:Z

    .line 185
    const-string v0, "GUEST_MODE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    .line 186
    const-string v0, "LAST_PLACE_ID_CREATE_TIME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/ActivityNativeMain;->z:J

    .line 188
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveTab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v2}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bundleSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain;->p:Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {v2}, Lcom/roblox/client/feature/FeatureState;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_1
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    .line 197
    if-nez v0, :cond_1

    .line 199
    const-string v1, "rbx.main"

    const-string v2, "onCreate no AppSettings."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v1, Lcom/roblox/client/startup/e;->c:Lcom/roblox/client/startup/e;

    .line 202
    invoke-static {p0, v1}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    const/16 v2, 0x2776

    invoke-virtual {p0, v1, v2}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    :cond_1
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    .line 209
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->v()V

    .line 211
    new-instance v1, Lcom/roblox/client/components/e;

    const v2, 0x1020012

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/components/e;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->v:Lcom/roblox/client/components/e;

    .line 213
    if-eqz v0, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->w()V

    .line 216
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    invoke-static {}, Lcom/roblox/client/b;->ay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-static {p0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/ActivityNativeMain$a;-><init>(Lcom/roblox/client/ActivityNativeMain;Lcom/roblox/client/ActivityNativeMain$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 245
    return-void

    .line 178
    :cond_3
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->setContentView(I)V

    goto/16 :goto_0

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GUEST_MODE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    .line 193
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsGuestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 316
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy. isFinishing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->isFinishing()Z

    move-result v0

    .line 320
    invoke-static {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/ActivityNativeMain;Z)V

    .line 322
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 323
    return-void
.end method

.method public onIncomingItemsUpdateEvent(Lcom/roblox/client/e/n;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1912
    const-string v0, "FRIENDS_TAG"

    invoke-virtual {p1}, Lcom/roblox/client/e/n;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;I)V

    .line 1913
    return-void
.end method

.method public onNavigateToConversationEvent(Lcom/roblox/client/e/p;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1901
    iget-wide v0, p1, Lcom/roblox/client/e/p;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1902
    iget-wide v0, p1, Lcom/roblox/client/e/p;->b:J

    invoke-direct {p0, v0, v1, v4}, Lcom/roblox/client/ActivityNativeMain;->b(JZ)V

    .line 1906
    :goto_0
    return-void

    .line 1904
    :cond_0
    iget-wide v0, p1, Lcom/roblox/client/e/p;->a:J

    invoke-direct {p0, v0, v1, v4}, Lcom/roblox/client/ActivityNativeMain;->a(JZ)V

    goto :goto_0
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/e/q;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1829
    iget-boolean v1, p1, Lcom/roblox/client/e/q;->d:Z

    .line 1830
    const-string v0, "PROFILE_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1832
    iget-wide v2, p1, Lcom/roblox/client/e/q;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "users/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/roblox/client/e/q;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/profile/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    :goto_0
    const v2, 0x7f0e0114

    invoke-static {p0, v0, v2, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 1876
    :goto_1
    return-void

    .line 1834
    :cond_0
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1835
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    goto :goto_0

    .line 1837
    :cond_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->profileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1841
    :cond_2
    const-string v0, "GAME_DETAILS_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "games/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0e00ef

    invoke-static {p0, v0, v2, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 1844
    :cond_3
    const-string v0, "MY_FEED_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "feeds/inapp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0e010e

    invoke-static {p0, v0, v2, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 1847
    :cond_4
    const-string v0, "SEARCH_GAMES_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1848
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchGamesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0e0115

    invoke-static {p0, v0, v2, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 1850
    :cond_5
    const-string v0, "GAMES_SEE_ALL_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1851
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->gamesSeeAllUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0e0103

    invoke-static {p0, v0, v2, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1853
    :cond_6
    const-string v0, "ABUSE_REPORT_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1854
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1856
    :cond_7
    const-string v0, "ANIMATED_ASSET_DETAILS_TAG"

    iget-object v2, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1859
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "catalog/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    :goto_2
    const v2, 0x7f0e011c

    invoke-static {p0, v0, v2, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1864
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "games/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1869
    :cond_9
    const-string v0, "FRIEND_FINDER_TAG"

    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1870
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/contacts/ActivityContacts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1871
    const/16 v1, 0x2780

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1874
    :cond_a
    iget-object v0, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onNavigationBarVisibilityEvent(Lcom/roblox/client/e/r;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1776
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM.onNavigationBarVisibilityEvent() visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/roblox/client/e/r;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-boolean v0, p1, Lcom/roblox/client/e/r;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->B:Z

    .line 1778
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Y()V

    .line 1779
    iget-boolean v0, p1, Lcom/roblox/client/e/r;->a:Z

    invoke-static {v0}, Lcom/roblox/client/i;->a(Z)V

    .line 1780
    return-void

    .line 1777
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Lcom/roblox/client/k;->onPause()V

    .line 302
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->b(Lcom/roblox/client/i/e$c;)V

    .line 303
    return-void
.end method

.method public onPushNotificationRegistrationFailedEvent(Lcom/roblox/client/e/t;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
    .end annotation

    .prologue
    .line 1805
    invoke-virtual {p1}, Lcom/roblox/client/e/t;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushNotificationRegistrationFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 1809
    instance-of v1, v0, Lcom/roblox/client/feature/j;

    if-eqz v1, :cond_0

    .line 1811
    check-cast v0, Lcom/roblox/client/feature/j;

    invoke-virtual {v0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 1812
    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {v0}, Lcom/roblox/client/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 1815
    if-eqz v1, :cond_0

    .line 1816
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->settingsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1817
    const v2, 0x7f0e01ae

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1818
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 1824
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/roblox/client/k;->onResume()V

    .line 287
    invoke-static {}, Lcom/roblox/client/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "rbx.main"

    const-string v1, "Alert: needs restart due to settings changed."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->r()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->A()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->i()Lcom/roblox/client/feature/FeatureState;

    move-result-object v0

    .line 331
    const-string v1, "CURRENT_STATE_BUNDLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 332
    const-string v1, "rbx.main"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bundleSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/roblox/client/feature/FeatureState;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    const-string v0, "BACK_FROM_GAME"

    iget-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const-string v0, "GUEST_MODE_KEY"

    iget-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    const-string v0, "LAST_PLACE_ID_CREATE_TIME"

    iget-wide v2, p0, Lcom/roblox/client/ActivityNativeMain;->z:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 339
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    return-void
.end method

.method public onSignalRConnectivityChangeEvent(Lcom/roblox/client/e/v;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1785
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM.onSignalRConnectivityChangeEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1787
    invoke-static {}, Lcom/roblox/client/http/o;->a()V

    .line 1788
    invoke-static {}, Lcom/roblox/client/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/r;

    invoke-direct {v1}, Lcom/roblox/client/h/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 1791
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/p;

    invoke-direct {v1}, Lcom/roblox/client/h/p;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 1792
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/c;

    invoke-direct {v1}, Lcom/roblox/client/h/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 1794
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 275
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/p;->a:Landroid/util/DisplayMetrics;

    .line 277
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 278
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    .line 280
    const-string v0, "main"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    .line 311
    invoke-super {p0}, Lcom/roblox/client/k;->onStop()V

    .line 312
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1449
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM.onTabChanged() CLICK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    .line 1453
    const-string v0, "AVATAR_EDITOR_TAG"

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->D()V

    .line 1458
    :cond_0
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {v0, p1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    .line 1461
    const-string v0, ""

    .line 1462
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v2

    .line 1463
    if-eqz v2, :cond_1

    .line 1464
    invoke-virtual {v2}, Lcom/roblox/client/feature/l;->g()Ljava/lang/String;

    move-result-object v0

    .line 1467
    :cond_1
    const-string v2, "nativeMain"

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "isLoggedIn"

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-static {}, Lcom/roblox/client/b;->bX()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CHAT_TAG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->f()I

    move-result v0

    .line 1473
    invoke-static {v0}, Lcom/roblox/client/i;->b(I)V

    .line 1475
    :cond_2
    return-void

    .line 1467
    :cond_3
    const-string v1, "isGuest"

    goto :goto_0
.end method

.method public onUnreadConversationCountEvent(Lcom/roblox/client/e/x;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1770
    invoke-virtual {p1}, Lcom/roblox/client/e/x;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->e(I)V

    .line 1771
    return-void
.end method

.method public onWebSearchEvent(Lcom/roblox/client/e/aa;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1661
    const-string v0, "rbx.main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM.onWebSearchEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v0, 0x0

    .line 1663
    iget v1, p1, Lcom/roblox/client/e/aa;->a:I

    packed-switch v1, :pswitch_data_0

    .line 1678
    :goto_0
    if-eqz v0, :cond_0

    .line 1679
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->U()V

    .line 1680
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->h(Ljava/lang/String;)V

    .line 1682
    :cond_0
    return-void

    .line 1666
    :pswitch_0
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchUsersUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1669
    :pswitch_1
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchGamesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1672
    :pswitch_2
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchCatalogUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1675
    :pswitch_3
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchGroupsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1663
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
