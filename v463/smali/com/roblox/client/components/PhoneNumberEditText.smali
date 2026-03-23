.class public Lcom/roblox/client/components/PhoneNumberEditText;
.super Lcom/roblox/client/components/RbxEditText;
.source "SourceFile"


# instance fields
.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/roblox/client/components/RbxEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/roblox/client/components/PhoneNumberEditText;->f()V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->d:Z

    .line 112
    sget v1, Lcom/roblox/client/o$f;->rbxEditTextTopLayout:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/PhoneNumberEditText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->g:Landroid/widget/LinearLayout;

    .line 114
    new-instance v1, Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/PhoneNumberEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roblox/client/components/RbxEditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    .line 115
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->getBottomContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->getTopContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v1

    .line 120
    sget v2, Lcom/roblox/client/o$f;->view_phone_code_field:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 125
    iget-object v1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const-string v0, "phone"

    .line 127
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/PhoneNumberEditText;->setTextBoxInput(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 43
    iget-object v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->a(I)V

    .line 64
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 99
    iget-object v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->b(I)V

    .line 78
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 106
    iget-object v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    return-void
.end method

.method public getPhonePrefixField()Lcom/roblox/client/components/RbxEditText;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    return-object v0
.end method

.method public setHintText(I)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->setHintText(I)V

    .line 50
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    return-void
.end method

.method public setPhonePrefixOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPhonePrefixText(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/roblox/client/components/PhoneNumberEditText;->h:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxEditText;->setTextBoxText(Ljava/lang/String;)V

    return-void
.end method
