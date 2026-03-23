.class public Lcom/roblox/client/s;
.super Landroidx/fragment/app/b;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ab/d$a;


# instance fields
.field public final ag:Ljava/lang/String;

.field public final ah:Ljava/lang/String;

.field public final ai:Ljava/lang/String;

.field public final aj:Ljava/lang/String;

.field public final ak:Ljava/lang/String;

.field protected al:I

.field protected am:I

.field protected an:I

.field protected ao:I

.field protected ap:I

.field protected aq:Lcom/roblox/client/ab/d;

.field protected ar:Lcom/roblox/client/p/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    const-string v0, "dialogHeight"

    .line 31
    iput-object v0, p0, Lcom/roblox/client/s;->ag:Ljava/lang/String;

    const-string v0, "dialogWidth"

    .line 32
    iput-object v0, p0, Lcom/roblox/client/s;->ah:Ljava/lang/String;

    const-string v0, "dialogGravity"

    .line 33
    iput-object v0, p0, Lcom/roblox/client/s;->ai:Ljava/lang/String;

    const-string v0, "dialogOffsetY"

    .line 34
    iput-object v0, p0, Lcom/roblox/client/s;->aj:Ljava/lang/String;

    const-string v0, "dialogOffsetX"

    .line 35
    iput-object v0, p0, Lcom/roblox/client/s;->ak:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/roblox/client/s;->al:I

    .line 38
    iput v0, p0, Lcom/roblox/client/s;->am:I

    .line 39
    iput v0, p0, Lcom/roblox/client/s;->an:I

    .line 40
    iput v0, p0, Lcom/roblox/client/s;->ao:I

    .line 41
    iput v0, p0, Lcom/roblox/client/s;->ap:I

    .line 45
    invoke-virtual {p0}, Lcom/roblox/client/s;->ao()Lcom/roblox/client/p/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/s;->ar:Lcom/roblox/client/p/b;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/roblox/client/s;->ar:Lcom/roblox/client/p/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/roblox/client/s;->ar:Lcom/roblox/client/p/b;

    invoke-virtual {v0, p1, p0}, Lcom/roblox/client/p/b;->a(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/view/View;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/roblox/client/s;->ar:Lcom/roblox/client/p/b;

    invoke-virtual {v0}, Lcom/roblox/client/p/b;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1

    :cond_0
    return-object p2
.end method

.method public a(Lcom/roblox/client/ab/e;)V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onThemeChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.theme"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/roblox/client/s;->ar:Lcom/roblox/client/p/b;

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Lcom/roblox/client/s$1;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/roblox/client/s;->s()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$c;->darkThemeToolbar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/s;->s()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$c;->RbxBlue3:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/s;->s()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$c;->lightThemeToolbar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/s;->ar:Lcom/roblox/client/p/b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/p/b;->a(I)V

    :cond_2
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/CharSequence;)V
    .locals 12

    monitor-enter p0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 193
    monitor-exit p0

    return-void

    .line 196
    :cond_0
    :try_start_1
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v8

    .line 198
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 199
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_RobloxSupport:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 201
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v4, v0

    .line 202
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x1

    new-array v7, v9, [Lcom/roblox/client/ae/a/a;

    const/4 v10, 0x0

    new-instance v11, Lcom/roblox/client/ae/a/c;

    const/4 v2, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/ae/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v11, v7, v10

    invoke-static {v6, p1, v7}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 204
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 205
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x96

    const/16 v5, 0x64

    const/16 p1, 0x96

    const/16 v7, 0x64

    move-object v2, v8

    move-object v3, v6

    move v6, p1

    .line 207
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/b;->a(Landroid/view/View;IIII)V

    .line 208
    invoke-virtual {v8, v9}, Landroidx/appcompat/app/b;->setCanceledOnTouchOutside(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    invoke-virtual {v8}, Landroidx/appcompat/app/b;->show()V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 183
    instance-of v1, v0, Lcom/roblox/client/r;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lcom/roblox/client/r;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/r;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected ao()Lcom/roblox/client/p/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ap()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/roblox/client/q;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/roblox/client/q;

    invoke-virtual {v0}, Lcom/roblox/client/q;->D()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "roblox.app"

    const-string v1, "The activity containing this fragment must be of type RobloxActivity!"

    .line 59
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public varargs b(I[Ljava/lang/Object;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lcom/roblox/client/r;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Lcom/roblox/client/r;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/r;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->b(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/s;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "dialogHeight"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/s;->al:I

    const-string v0, "dialogWidth"

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/s;->am:I

    const-string v0, "dialogGravity"

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/s;->an:I

    const-string v0, "dialogOffsetY"

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/s;->ao:I

    const-string v0, "dialogOffsetX"

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/s;->ap:I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/roblox/client/r;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/roblox/client/r;

    invoke-virtual {v0, p1}, Lcom/roblox/client/r;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 176
    instance-of v1, v0, Lcom/roblox/client/r;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/roblox/client/r;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/r;->a(II)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 148
    instance-of v1, v0, Lcom/roblox/client/r;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lcom/roblox/client/r;

    invoke-virtual {v0, p1}, Lcom/roblox/client/r;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 141
    instance-of v1, v0, Lcom/roblox/client/r;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Lcom/roblox/client/r;

    invoke-virtual {v0, p1}, Lcom/roblox/client/r;->c(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->d(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/roblox/client/s;->c()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    iget v1, p0, Lcom/roblox/client/s;->al:I

    if-eqz v1, :cond_1

    .line 112
    iget v1, p0, Lcom/roblox/client/s;->am:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    iget v2, p0, Lcom/roblox/client/s;->al:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 116
    :cond_1
    iget v1, p0, Lcom/roblox/client/s;->an:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 119
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 120
    iget v2, p0, Lcom/roblox/client/s;->ao:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 121
    iget v2, p0, Lcom/roblox/client/s;->ap:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 128
    :cond_3
    new-instance p1, Lcom/roblox/client/ab/d;

    invoke-direct {p1, p0}, Lcom/roblox/client/ab/d;-><init>(Lcom/roblox/client/ab/d$a;)V

    iput-object p1, p0, Lcom/roblox/client/s;->aq:Lcom/roblox/client/ab/d;

    .line 129
    invoke-virtual {p1, p0}, Lcom/roblox/client/ab/d;->a(Landroidx/lifecycle/j;)V

    return-void
.end method

.method public h()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/b;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/b;->i()V

    return-void
.end method
