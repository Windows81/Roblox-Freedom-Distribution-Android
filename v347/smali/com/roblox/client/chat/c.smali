.class public Lcom/roblox/client/chat/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Lcom/d/a/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/roblox/client/chat/c;-><init>(Landroid/content/Context;ZZLandroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/roblox/client/chat/c;->a:Landroid/content/Context;

    .line 52
    iput-boolean p2, p0, Lcom/roblox/client/chat/c;->f:Z

    .line 53
    iput-boolean p3, p0, Lcom/roblox/client/chat/c;->g:Z

    .line 54
    iput-object p4, p0, Lcom/roblox/client/chat/c;->h:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, Lcom/roblox/client/util/f$a;

    invoke-direct {v0}, Lcom/roblox/client/util/f$a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/c;->i:Lcom/d/a/ac;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private a(ILcom/roblox/client/chat/c$a;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->i:Landroid/widget/TextView;

    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->i:Landroid/widget/TextView;

    const v1, 0x7f0e014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->i:Landroid/widget/TextView;

    const v1, 0x7f0e0147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p2, Lcom/roblox/client/chat/c$a;->i:Landroid/widget/TextView;

    const v1, 0x7f0e0148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/roblox/client/chat/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p2}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/chat/c;->i:Lcom/d/a/ac;

    .line 244
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(Lcom/d/a/ac;)Lcom/d/a/x;

    move-result-object v0

    const v1, 0x7f070706

    .line 245
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(I)Lcom/d/a/x;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1}, Lcom/d/a/x;->a(Landroid/widget/ImageView;)V

    .line 247
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/roblox/client/chat/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Lcom/roblox/client/chat/a/m;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Lcom/roblox/client/chat/c;->b()Z

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 130
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/roblox/client/chat/c;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/chat/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/c;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/roblox/client/chat/c;->b:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    if-nez v0, :cond_2

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    .line 70
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    if-eqz v2, :cond_3

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 73
    if-eqz p2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 78
    :cond_3
    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/m;)Z
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Lcom/roblox/client/chat/c;->b()Z

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/roblox/client/chat/c;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/chat/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/c;->a(I)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f080052

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/roblox/client/chat/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 156
    new-instance v1, Lcom/roblox/client/chat/c$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/chat/c$a;-><init>(Lcom/roblox/client/chat/c;Lcom/roblox/client/chat/c$1;)V

    .line 157
    iput-object p2, v1, Lcom/roblox/client/chat/c$a;->a:Landroid/view/View;

    .line 158
    const v0, 0x7f080059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->b:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f08005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->c:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f08014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->d:Landroid/view/View;

    .line 161
    const v0, 0x7f08014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->e:Landroid/view/View;

    .line 162
    const v0, 0x7f080054

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->h:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f080058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->i:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f080056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f080057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-boolean v0, p0, Lcom/roblox/client/chat/c;->f:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, v1, Lcom/roblox/client/chat/c$a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/c$a;

    .line 175
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/c;->a(I)Lcom/roblox/client/chat/a/m;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v2

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/roblox/client/chat/a/n;->a(J)Lcom/roblox/client/chat/a/m;

    move-result-object v1

    .line 178
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/roblox/client/chat/c;->a(Lcom/roblox/client/chat/a/m;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->c:Landroid/widget/ImageView;

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :goto_0
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v2

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/roblox/client/chat/a/n;->b(J)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/chat/c;->a(ILcom/roblox/client/chat/c$a;)V

    .line 199
    iget-boolean v2, p0, Lcom/roblox/client/chat/c;->f:Z

    if-eqz v2, :cond_6

    .line 200
    iget-object v2, p0, Lcom/roblox/client/chat/c;->h:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 202
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/roblox/client/chat/c;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 204
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/roblox/client/chat/c;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_1
    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 209
    iget-object v1, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, v0, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :goto_1
    return-object p2

    .line 186
    :cond_2
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/roblox/client/chat/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v2, v0, Lcom/roblox/client/chat/c$a;->b:Landroid/widget/ImageView;

    const v3, 0x7f070706

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 212
    :cond_4
    iget-boolean v1, p0, Lcom/roblox/client/chat/c;->g:Z

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    const v2, 0x7f07075b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v1, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, v0, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 218
    :cond_5
    iget-object v1, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, v0, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 223
    :cond_6
    iget-object v1, v0, Lcom/roblox/client/chat/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, v0, Lcom/roblox/client/chat/c$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/roblox/client/chat/c;->b()Z

    move-result v4

    .line 87
    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 88
    :goto_0
    if-nez v3, :cond_0

    if-eqz v4, :cond_5

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/roblox/client/chat/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v2, v1

    .line 91
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/m;

    .line 93
    if-eqz v3, :cond_4

    .line 94
    iget-object v5, p0, Lcom/roblox/client/chat/c;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/roblox/client/chat/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    :cond_1
    iget-object v5, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v3, v1

    .line 87
    goto :goto_0

    .line 100
    :cond_4
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/roblox/client/chat/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    iget-object v5, p0, Lcom/roblox/client/chat/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_5
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method
