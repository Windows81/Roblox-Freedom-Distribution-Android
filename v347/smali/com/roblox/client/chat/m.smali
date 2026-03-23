.class public Lcom/roblox/client/chat/m;
.super Lcom/roblox/client/chat/b;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/chat/ConversationActivity$a;


# instance fields
.field private b:Landroid/support/v7/widget/Toolbar;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:J

.field private g:Lcom/roblox/client/chat/c;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/roblox/client/chat/b;-><init>()V

    .line 99
    new-instance v0, Lcom/roblox/client/chat/m$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/m$3;-><init>(Lcom/roblox/client/chat/m;)V

    iput-object v0, p0, Lcom/roblox/client/chat/m;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/m;)Lcom/roblox/client/chat/c;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/roblox/client/chat/m;->g:Lcom/roblox/client/chat/c;

    return-object v0
.end method

.method private a(Lcom/roblox/client/chat/a/d;)V
    .locals 4

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/roblox/client/chat/m;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->e()I

    move-result v0

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/chat/m;->b:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0146

    invoke-virtual {p0, v3}, Lcom/roblox/client/chat/m;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/b;->K()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/chat/m;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/roblox/client/chat/m;->f:J

    return-wide v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/roblox/client/chat/m;->h()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/roblox/client/chat/m;->g:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/chat/c;->a(Ljava/util/ArrayList;)V

    .line 127
    iget-object v1, p0, Lcom/roblox/client/chat/m;->g:Lcom/roblox/client/chat/c;

    invoke-virtual {v1}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 128
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/m;->a(Lcom/roblox/client/chat/a/d;)V

    .line 129
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    .line 148
    new-instance v0, Lcom/roblox/client/chat/f;

    invoke-direct {v0}, Lcom/roblox/client/chat/f;-><init>()V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v2, "CONVERSATION_ID_EXTRA"

    iget-wide v4, p0, Lcom/roblox/client/chat/m;->f:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/f;->setArguments(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 153
    const v2, 0x7f080197

    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 154
    invoke-virtual {v1}, Landroid/support/v4/app/p;->c()I

    .line 155
    return-void
.end method

.method private h()Lcom/roblox/client/chat/a/d;
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/m;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/roblox/client/chat/m;->f:J

    return-wide v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/roblox/client/chat/m;->g()V

    .line 169
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/h;

    iget-wide v2, p0, Lcom/roblox/client/chat/m;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/h;->a(J)V

    goto :goto_0
.end method

.method public onChatConversationUpdatedEvent(Lcom/roblox/client/e/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/roblox/client/e/e;->a()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/e/e;->a()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/chat/m;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/roblox/client/chat/m;->f()V

    .line 178
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 48
    const v0, 0x7f0a005a

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 49
    invoke-virtual {p0, v5}, Lcom/roblox/client/chat/m;->a(Landroid/view/View;)V

    .line 51
    const v0, 0x7f080196

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/m;->d:Landroid/view/View;

    .line 52
    const v0, 0x7f080195

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/m;->e:Landroid/view/View;

    .line 54
    const v0, 0x7f0801d9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/m;->b:Landroid/support/v7/widget/Toolbar;

    .line 56
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    const-string v0, "SHOW_SHADOWS_EXTRA"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    const-string v6, "CONVERSATION_ID_EXTRA"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/roblox/client/chat/m;->f:J

    .line 62
    :goto_0
    iget-object v6, p0, Lcom/roblox/client/chat/m;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/roblox/client/chat/m;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    move v3, v1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/chat/m;->h()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->d()Z

    move-object v0, v5

    .line 96
    :goto_2
    return-object v0

    :cond_1
    move v2, v3

    .line 62
    goto :goto_1

    .line 71
    :cond_2
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/m;->a(Lcom/roblox/client/chat/a/d;)V

    .line 73
    iget-object v2, p0, Lcom/roblox/client/chat/m;->b:Landroid/support/v7/widget/Toolbar;

    const v3, 0x7f070725

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 74
    iget-object v2, p0, Lcom/roblox/client/chat/m;->b:Landroid/support/v7/widget/Toolbar;

    new-instance v3, Lcom/roblox/client/chat/m$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/chat/m$1;-><init>(Lcom/roblox/client/chat/m;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    move v1, v4

    .line 83
    :cond_3
    new-instance v0, Lcom/roblox/client/chat/c;

    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/chat/m;->h:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/roblox/client/chat/c;-><init>(Landroid/content/Context;ZZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/roblox/client/chat/m;->g:Lcom/roblox/client/chat/c;

    .line 84
    iget-object v0, p0, Lcom/roblox/client/chat/m;->g:Lcom/roblox/client/chat/c;

    invoke-direct {p0}, Lcom/roblox/client/chat/m;->h()Lcom/roblox/client/chat/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/c;->a(Ljava/util/ArrayList;)V

    .line 86
    const v0, 0x7f08010f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/roblox/client/chat/m;->c:Landroid/widget/ListView;

    .line 87
    iget-object v0, p0, Lcom/roblox/client/chat/m;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/m;->g:Lcom/roblox/client/chat/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/roblox/client/chat/m;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/roblox/client/chat/m$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/m$2;-><init>(Lcom/roblox/client/chat/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object v0, v5

    .line 96
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onSignalRConnectivityChangeEvent(Lcom/roblox/client/e/v;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/roblox/client/chat/m;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/roblox/client/chat/m;->f()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->u_()V

    .line 187
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onStart()V

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/chat/m;->u_()V

    .line 138
    const-string v0, "chatConversationParticipants"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 144
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onStop()V

    .line 145
    return-void
.end method
