.class public Lcom/roblox/client/game/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/o;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/roblox/client/RbxKeyboard;

.field private c:J

.field private d:Lcom/roblox/engine/b$a;


# direct methods
.method public constructor <init>(Lcom/roblox/engine/b$a;Lcom/roblox/client/RbxKeyboard;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.game"

    .line 21
    iput-object v0, p0, Lcom/roblox/client/game/g;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/roblox/client/game/g;->c:J

    .line 30
    iput-object p1, p0, Lcom/roblox/client/game/g;->d:Lcom/roblox/engine/b$a;

    .line 31
    iput-object p2, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const/4 p1, -0x1

    .line 33
    invoke-virtual {p2, p1}, Lcom/roblox/client/RbxKeyboard;->setBackgroundColor(I)V

    .line 34
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setTextColor(I)V

    .line 36
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const p2, 0x10000004

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setImeOptions(I)V

    .line 40
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setSingleLine(Z)V

    .line 41
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    new-instance p2, Lcom/roblox/client/game/g$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/game/g$1;-><init>(Lcom/roblox/client/game/g;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    new-instance p2, Lcom/roblox/client/game/g$2;

    invoke-direct {p2, p0}, Lcom/roblox/client/game/g$2;-><init>(Lcom/roblox/client/game/g;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    new-instance p2, Lcom/roblox/client/game/g$3;

    invoke-direct {p2, p0}, Lcom/roblox/client/game/g$3;-><init>(Lcom/roblox/client/game/g;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setAdapter(Lcom/roblox/client/RbxKeyboard$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/g;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/roblox/client/game/g;->e()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/game/g;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/roblox/client/game/g;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/roblox/client/game/g;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/roblox/client/game/g;->c:J

    return-wide v0
.end method

.method private c()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/roblox/client/game/g;->d:Lcom/roblox/engine/b$a;

    invoke-interface {v0}, Lcom/roblox/engine/b$a;->j_()Z

    move-result v0

    return v0
.end method

.method private d()F
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/roblox/client/game/g;->d:Lcom/roblox/engine/b$a;

    invoke-interface {v0}, Lcom/roblox/engine/b$a;->o()F

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/roblox/client/game/g;)Lcom/roblox/client/RbxKeyboard;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    .line 123
    invoke-virtual {v1}, Lcom/roblox/client/RbxKeyboard;->getSelectionStart()I

    move-result v1

    .line 121
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->syncTextboxTextAndCursorPosition2(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "rbx.game"

    const-string v1, "hideKeyboard: ..."

    .line 158
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 160
    iput-wide v0, p0, Lcom/roblox/client/game/g;->c:J

    .line 161
    iget-object v2, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 163
    iget-object v0, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-static {v0, v1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    return-void
.end method

.method public a(JZLjava/lang/String;)V
    .locals 2

    const-string v0, "rbx.game"

    const-string v1, "showKeyboard: ..."

    .line 129
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-wide p1, p0, Lcom/roblox/client/game/g;->c:J

    .line 132
    iget-object v0, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 134
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {p1, p4}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/roblox/client/game/g;->d()F

    move-result p1

    if-eqz p3, :cond_0

    const/16 p2, 0x24

    goto :goto_0

    :cond_0
    const/16 p2, -0x96

    .line 142
    :goto_0
    iget-object p3, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {p3}, Lcom/roblox/client/RbxKeyboard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 143
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 144
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {p1, p3}, Lcom/roblox/client/RbxKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {p1}, Lcom/roblox/client/RbxKeyboard;->requestFocus()Z

    .line 150
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-static {p1}, Lcom/roblox/client/x;->a(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcom/roblox/client/game/g;->b:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/RbxKeyboard;->setSelection(I)V

    .line 153
    invoke-direct {p0}, Lcom/roblox/client/game/g;->e()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
