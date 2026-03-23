.class Lcom/roblox/client/signup/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->d(Lcom/roblox/client/signup/a;)Z

    move-result v0

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v1, v0}, Lcom/roblox/client/signup/a;->a(Z)V

    .line 364
    return-void

    .line 351
    :pswitch_0
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1, p2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;I)I

    .line 352
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    const-string v2, "birthdayDay"

    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1, p2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;I)I

    .line 356
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    const-string v2, "birthdayMonth"

    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    const-string v2, "birthdayYear"

    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/roblox/client/signup/a$4;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1, p2}, Lcom/roblox/client/signup/a;->c(Lcom/roblox/client/signup/a;I)I

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
