.class Lcom/roblox/client/contacts/c$b;
.super Lcom/roblox/client/contacts/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field c:Lcom/roblox/client/components/RbxTextView;

.field d:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$a;-><init>(Landroid/view/View;)V

    .line 240
    const v0, 0x7f080066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 241
    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->b:Lcom/roblox/client/components/RbxTextView;

    .line 242
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->c:Lcom/roblox/client/components/RbxTextView;

    .line 243
    const v0, 0x7f080070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->d:Landroid/widget/Button;

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c$b;Z)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->d:Landroid/widget/Button;

    const v1, 0x7f0e0175

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->d:Landroid/widget/Button;

    const v1, 0x7f0707e2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->d:Landroid/widget/Button;

    const v1, 0x7f0e016e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->d:Landroid/widget/Button;

    const v1, 0x7f0707e0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f0706fa

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->b:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/roblox/client/contacts/c$b;->c:Lcom/roblox/client/components/RbxTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/c$b;->a(Z)V

    .line 267
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->d:Landroid/widget/Button;

    new-instance v1, Lcom/roblox/client/contacts/c$b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/contacts/c$b$1;-><init>(Lcom/roblox/client/contacts/c$b;Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/c$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
