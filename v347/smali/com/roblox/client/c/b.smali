.class public Lcom/roblox/client/c/b;
.super Landroid/support/v4/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/c/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/c/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/roblox/client/c/b;->dismiss()V

    .line 126
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/c/b$a;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    .line 45
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    invoke-interface {v0}, Lcom/roblox/client/c/b$a;->b()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "RateMeMaybeFragment"

    const-string v1, "onCancel - mInterface is null"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "RateMeMaybeFragment"

    const-string v1, "onClick - mInterface is null"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_1
    invoke-direct {p0}, Lcom/roblox/client/c/b;->a()V

    goto :goto_0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    invoke-interface {v0}, Lcom/roblox/client/c/b$a;->b()V

    goto :goto_1

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    invoke-interface {v0}, Lcom/roblox/client/c/b$a;->c()V

    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    invoke-virtual {p0}, Lcom/roblox/client/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/c/b$a;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 117
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/c/b;->a:Lcom/roblox/client/c/b$a;

    invoke-interface {v0}, Lcom/roblox/client/c/b$a;->d()V

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f080093
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/roblox/client/c/b;->setRetainInstance(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/roblox/client/c/b;->getTheme()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/c/b;->setStyle(II)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0a004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/roblox/client/c/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/c/b;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/g;->onDestroyView()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/roblox/client/c/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 74
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 80
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    :goto_0
    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 83
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    .line 87
    return-void

    .line 80
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method
