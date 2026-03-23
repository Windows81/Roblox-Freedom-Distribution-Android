.class Lcom/roblox/client/contacts/c$e;
.super Lcom/roblox/client/contacts/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 295
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$a;-><init>(Landroid/view/View;)V

    .line 296
    sget v0, Lcom/roblox/client/o$f;->contact_list_header_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
    .locals 0

    return-void
.end method
