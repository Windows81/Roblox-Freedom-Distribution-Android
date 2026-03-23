.class Lcom/roblox/client/signup/UsernameSignUpEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;)V
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

    .line 110
    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$1;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$1;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->d(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$1;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$1;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->b(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$1;->a:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-static {v3}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    .line 113
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method
