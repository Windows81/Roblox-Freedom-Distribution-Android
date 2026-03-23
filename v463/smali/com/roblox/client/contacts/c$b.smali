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
.field s:Lcom/roblox/client/components/RbxTextView;

.field t:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 238
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$a;-><init>(Landroid/view/View;)V

    .line 240
    sget v0, Lcom/roblox/client/o$f;->contacts_list_thumbnail_img_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 241
    sget v0, Lcom/roblox/client/o$f;->contacts_list_name_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->r:Lcom/roblox/client/components/RbxTextView;

    .line 242
    sget v0, Lcom/roblox/client/o$f;->contacts_list_sub_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$b;->s:Lcom/roblox/client/components/RbxTextView;

    .line 243
    sget v0, Lcom/roblox/client/o$f;->contacts_send_app_link_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/roblox/client/contacts/c$b;->t:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c$b;Z)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$b;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/roblox/client/contacts/c$b;->t:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_Invited:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 284
    iget-object p1, p0, Lcom/roblox/client/contacts/c$b;->t:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_gray:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/c$b;->t:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Action_Invite:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 287
    iget-object p1, p0, Lcom/roblox/client/contacts/c$b;->t:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_blue:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
    .locals 4

    .line 248
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    sget v1, Lcom/roblox/client/o$e;->empty_contact_icon:I

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/c$b;->a(Ljava/lang/String;)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->r:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/roblox/client/contacts/c$b;->s:Lcom/roblox/client/components/RbxTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/c$b;->b(Z)V

    .line 267
    iget-object v0, p0, Lcom/roblox/client/contacts/c$b;->t:Landroid/widget/Button;

    new-instance v1, Lcom/roblox/client/contacts/c$b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/contacts/c$b$1;-><init>(Lcom/roblox/client/contacts/c$b;Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
