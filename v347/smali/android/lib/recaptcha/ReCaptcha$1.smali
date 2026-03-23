.class Landroid/lib/recaptcha/ReCaptcha$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/lib/recaptcha/ReCaptcha;->a(Ljava/lang/String;Landroid/lib/recaptcha/ReCaptcha$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/lib/recaptcha/ReCaptcha$a;

.field final synthetic b:Landroid/lib/recaptcha/ReCaptcha;


# direct methods
.method constructor <init>(Landroid/lib/recaptcha/ReCaptcha;Landroid/lib/recaptcha/ReCaptcha$a;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Landroid/lib/recaptcha/ReCaptcha$1;->b:Landroid/lib/recaptcha/ReCaptcha;

    iput-object p2, p0, Landroid/lib/recaptcha/ReCaptcha$1;->a:Landroid/lib/recaptcha/ReCaptcha$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 359
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    iget-object v3, p0, Landroid/lib/recaptcha/ReCaptcha$1;->b:Landroid/lib/recaptcha/ReCaptcha;

    invoke-virtual {v3, v2}, Landroid/lib/recaptcha/ReCaptcha;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    :cond_0
    iget-object v2, p0, Landroid/lib/recaptcha/ReCaptcha$1;->a:Landroid/lib/recaptcha/ReCaptcha$a;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Landroid/lib/recaptcha/ReCaptcha$1;->a:Landroid/lib/recaptcha/ReCaptcha$a;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v1, p0, Landroid/lib/recaptcha/ReCaptcha$1;->b:Landroid/lib/recaptcha/ReCaptcha;

    invoke-static {v1}, Landroid/lib/recaptcha/ReCaptcha;->a(Landroid/lib/recaptcha/ReCaptcha;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/lib/recaptcha/ReCaptcha$a;->a(ZLjava/lang/String;)V

    .line 371
    :cond_1
    return-void

    .line 369
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
