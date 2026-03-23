.class public Lcom/roblox/client/m;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# instance fields
.field public final DIALOG_GRAVITY_ARG:Ljava/lang/String;

.field public final DIALOG_HEIGHT_ARG:Ljava/lang/String;

.field public final DIALOG_OFFSET_X_ARG:Ljava/lang/String;

.field public final DIALOG_OFFSET_Y_ARG:Ljava/lang/String;

.field public final DIALOG_WIDTH_ARG:Ljava/lang/String;

.field protected mDialogGravity:I

.field protected mDialogHeight:I

.field protected mDialogOffsetX:I

.field protected mDialogOffsetY:I

.field protected mDialogWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    .line 26
    const-string v0, "dialogHeight"

    iput-object v0, p0, Lcom/roblox/client/m;->DIALOG_HEIGHT_ARG:Ljava/lang/String;

    .line 27
    const-string v0, "dialogWidth"

    iput-object v0, p0, Lcom/roblox/client/m;->DIALOG_WIDTH_ARG:Ljava/lang/String;

    .line 28
    const-string v0, "dialogGravity"

    iput-object v0, p0, Lcom/roblox/client/m;->DIALOG_GRAVITY_ARG:Ljava/lang/String;

    .line 29
    const-string v0, "dialogOffsetY"

    iput-object v0, p0, Lcom/roblox/client/m;->DIALOG_OFFSET_Y_ARG:Ljava/lang/String;

    .line 30
    const-string v0, "dialogOffsetX"

    iput-object v0, p0, Lcom/roblox/client/m;->DIALOG_OFFSET_X_ARG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/roblox/client/m;->mDialogHeight:I

    .line 33
    iput v1, p0, Lcom/roblox/client/m;->mDialogWidth:I

    .line 34
    iput v1, p0, Lcom/roblox/client/m;->mDialogGravity:I

    .line 35
    iput v1, p0, Lcom/roblox/client/m;->mDialogOffsetY:I

    .line 36
    iput v1, p0, Lcom/roblox/client/m;->mDialogOffsetX:I

    return-void
.end method


# virtual methods
.method public varargs alertFormatted(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/roblox/client/l;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/roblox/client/l;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/l;->a(I[Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public alertIfNetworkNotConnected()Z
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 43
    instance-of v1, v0, Lcom/roblox/client/k;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Lcom/roblox/client/k;

    invoke-virtual {v0}, Lcom/roblox/client/k;->p()Z

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    const-string v0, "roblox.app"

    const-string v1, "The activity containing this fragment must be of type RobloxActivity!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alertMessageFromServerOkButton(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 95
    instance-of v1, v0, Lcom/roblox/client/l;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lcom/roblox/client/l;

    invoke-virtual {v0, p1}, Lcom/roblox/client/l;->c(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public alertOk(I)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lcom/roblox/client/l;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lcom/roblox/client/l;

    invoke-virtual {v0, p1}, Lcom/roblox/client/l;->c(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public alertOkWithDismissListener(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 109
    instance-of v1, v0, Lcom/roblox/client/l;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/roblox/client/l;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/l;->a(ILandroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    :cond_0
    return-void
.end method

.method public declared-synchronized contactSupport(Ljava/lang/CharSequence;)V
    .locals 11

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, v1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v6

    .line 138
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 139
    const v0, 0x7f0e012c

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 141
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v4, v0

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    new-array v9, v0, [Lcom/roblox/client/util/a/a;

    const/4 v10, 0x0

    new-instance v0, Lcom/roblox/client/util/a/c;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/util/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/roblox/client/util/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/util/a/a;)V

    .line 144
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 147
    const/16 v2, 0x96

    const/16 v3, 0x64

    const/16 v4, 0x96

    const/16 v5, 0x64

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/b;->a(Landroid/view/View;IIII)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/support/v7/app/b;->setCanceledOnTouchOutside(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v6}, Landroid/support/v7/app/b;->show()V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/roblox/client/m;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 76
    iget v0, p0, Lcom/roblox/client/m;->mDialogHeight:I

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/roblox/client/m;->mDialogWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/roblox/client/m;->mDialogWidth:I

    :goto_0
    iget v3, p0, Lcom/roblox/client/m;->mDialogHeight:I

    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 81
    :cond_0
    iget v0, p0, Lcom/roblox/client/m;->mDialogGravity:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 84
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 85
    iget v3, p0, Lcom/roblox/client/m;->mDialogOffsetY:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    iget v3, p0, Lcom/roblox/client/m;->mDialogOffsetX:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 87
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    :cond_2
    return-void

    .line 77
    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/roblox/client/m;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "dialogHeight"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/m;->mDialogHeight:I

    .line 58
    const-string v1, "dialogWidth"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/m;->mDialogWidth:I

    .line 59
    const-string v1, "dialogGravity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/m;->mDialogGravity:I

    .line 60
    const-string v1, "dialogOffsetY"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/m;->mDialogOffsetY:I

    .line 61
    const-string v1, "dialogOffsetX"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/m;->mDialogOffsetX:I

    .line 63
    :cond_0
    return-void
.end method

.method public showToast(II)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 123
    instance-of v1, v0, Lcom/roblox/client/l;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lcom/roblox/client/l;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/l;->a(II)V

    .line 126
    :cond_0
    return-void
.end method
