.class Lcom/roblox/client/signup/UsernameSignUpEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:I

.field final synthetic c:Lcom/roblox/client/signup/UsernameSignUpEditText;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/UsernameSignUpEditText;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$2;->c:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$2;->a:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 126
    iget-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$2;->c:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$2;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText$2;->b:I

    invoke-static {p1, v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Lcom/roblox/client/signup/UsernameSignUpEditText;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
