.class Lcom/roblox/client/signup/UsernameSignUpEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/UsernameSignUpEditText;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$3;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$3;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->h(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$3;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->e(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$3;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$3;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v4}, Lcom/roblox/client/signup/UsernameSignUpEditText;->g(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 157
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 159
    return-void
.end method
