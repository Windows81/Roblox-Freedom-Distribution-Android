.class public Lcom/roblox/client/contacts/h;
.super Lcom/roblox/client/l/g;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/v$a;
.implements Lcom/roblox/client/contacts/c$d;
.implements Lcom/roblox/client/contacts/i$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/contacts/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/l/g;",
        "Landroid/support/v4/app/v$a",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/roblox/client/contacts/c$d;",
        "Lcom/roblox/client/contacts/i$c;"
    }
.end annotation


# instance fields
.field private b:Lcom/roblox/client/contacts/h$a;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/roblox/client/contacts/c;

.field private i:Lcom/roblox/client/contacts/i$b;

.field private j:Lcom/roblox/client/l/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/roblox/client/l/g;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/h;)Lcom/roblox/client/contacts/h$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    return-object v0
.end method

.method public static a()Lcom/roblox/client/contacts/h;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/roblox/client/contacts/h;

    invoke-direct {v0}, Lcom/roblox/client/contacts/h;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-void
.end method

.method private a(ZI)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Lcom/roblox/client/contacts/model/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const v1, 0x7f0e0167

    invoke-virtual {p0, v1}, Lcom/roblox/client/contacts/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-static {}, Lcom/roblox/client/b;->bp()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 205
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/roblox/client/b;->bq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    const-string v0, "sms_body"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/roblox/client/util/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/roblox/client/contacts/h;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/util/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/h;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 237
    :cond_2
    const v0, 0x7f0e0199

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/h;->alertOk(I)V

    goto/16 :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/support/v4/a/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/e",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    const-string v0, "rbx.contacts"

    const-string v1, "Creating the loader."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/support/v4/a/d;

    .line 274
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/contacts/a;->a:Landroid/net/Uri;

    sget-object v3, Lcom/roblox/client/contacts/a;->b:[Ljava/lang/String;

    const-string v4, "mimetype IN (?, ?, ?, ?) AND in_visible_group = ? AND display_name <> ? AND has_phone_number = ?"

    sget-object v5, Lcom/roblox/client/contacts/a;->c:[Ljava/lang/String;

    const-string v6, "display_name ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/d;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->g()V

    .line 367
    const/4 v0, 0x1

    const v1, 0x7f0e017d

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/contacts/h;->a(ZI)V

    .line 369
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/h$a;->d(I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/a/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/e",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    const-string v0, "rbx.contacts"

    const-string v1, "Loader reset."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public a(Landroid/support/v4/a/e;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/e",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :cond_2
    const-string v0, "rbx.contacts"

    const-string v1, "Contacts loaded."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->i:Lcom/roblox/client/contacts/i$b;

    invoke-interface {v0, p2}, Lcom/roblox/client/contacts/i$b;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v4/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/contacts/h;->a(Landroid/support/v4/a/e;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Lcom/roblox/client/contacts/i$b;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/roblox/client/contacts/h;->i:Lcom/roblox/client/contacts/i$b;

    .line 399
    return-void
.end method

.method public a(Lcom/roblox/client/contacts/model/d;)V
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Sending friend invite."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->i:Lcom/roblox/client/contacts/i$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/i$b;->a(Lcom/roblox/client/contacts/model/d;)V

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/l/a$a;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/roblox/client/contacts/h;->j:Lcom/roblox/client/l/a$a;

    .line 404
    return-void
.end method

.method public a(Lcom/roblox/client/l/e;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/roblox/client/contacts/h;->a:Lcom/roblox/client/l/e;

    .line 409
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/roblox/client/contacts/i$b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/h;->a(Lcom/roblox/client/contacts/i$b;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v0, "rbx.contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roblox contacts merged. Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/roblox/client/contacts/c;

    invoke-direct {v0, p1, p0}, Lcom/roblox/client/contacts/c;-><init>(Ljava/util/ArrayList;Lcom/roblox/client/contacts/c$d;)V

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    .line 342
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 343
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->notifyDataSetChanged()V

    .line 345
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->g()V

    .line 347
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/h$a;->d(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0, p1}, Lcom/roblox/client/contacts/c;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Unique contacts generated."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->f()V

    goto :goto_0
.end method

.method public b(Lcom/roblox/client/contacts/model/d;)V
    .locals 2

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->i:Lcom/roblox/client/contacts/i$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/i$b;->b(Lcom/roblox/client/contacts/model/d;)V

    .line 391
    const-string v0, "rbx.contacts"

    const-string v1, "Sending app invite."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/h;->c(Lcom/roblox/client/contacts/model/d;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Roblox contacts fetched."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->f()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->g()V

    .line 329
    const/4 v0, 0x1

    const v1, 0x7f0e0172

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/contacts/h;->a(ZI)V

    .line 331
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/h$a;->d(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/roblox/client/l/g;->onAttach(Landroid/content/Context;)V

    .line 163
    instance-of v0, p1, Lcom/roblox/client/contacts/h$a;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lcom/roblox/client/contacts/h$a;

    iput-object p1, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    .line 169
    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/roblox/client/l/g;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lcom/roblox/client/contacts/g;

    new-instance v1, Lcom/roblox/client/contacts/e;

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/contacts/b;

    new-instance v4, Lcom/roblox/client/http/h;

    invoke-direct {v4}, Lcom/roblox/client/http/h;-><init>()V

    new-instance v5, Lcom/roblox/client/util/p$b;

    invoke-direct {v5}, Lcom/roblox/client/util/p$b;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/roblox/client/contacts/b;-><init>(Lcom/roblox/client/http/f;Lcom/roblox/client/util/p$a;)V

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/contacts/e;-><init>(Lcom/roblox/client/util/m;Lcom/roblox/client/contacts/b;)V

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/contacts/g;-><init>(Lcom/roblox/client/contacts/i$c;Lcom/roblox/client/contacts/i$a;)V

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->i:Lcom/roblox/client/contacts/i$b;

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 104
    const v0, 0x7f0a005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    const v0, 0x7f08005c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->g:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f080060

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->d:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x7f080067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->e:Landroid/widget/RelativeLayout;

    .line 109
    const v0, 0x7f080061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->f:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f080069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->c:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    const v0, 0x7f08005f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/contacts/h$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/contacts/h$1;-><init>(Lcom/roblox/client/contacts/h;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f08006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxSearchView;

    .line 122
    new-instance v2, Lcom/roblox/client/contacts/h$2;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/contacts/h$2;-><init>(Lcom/roblox/client/contacts/h;Lcom/roblox/client/components/RbxSearchView;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 138
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 139
    iget-object v2, p0, Lcom/roblox/client/contacts/h;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/roblox/client/l/g;->onDetach()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Lcom/roblox/client/l/g;->onResume()V

    .line 148
    const-string v0, "rbx.contacts"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/contacts/h;->h:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->f()V

    .line 153
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->b:Lcom/roblox/client/contacts/h$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/h$a;->d(I)V

    .line 156
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->getLoaderManager()Landroid/support/v4/app/v;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/v;->a(ILandroid/os/Bundle;Landroid/support/v4/app/v$a;)Landroid/support/v4/a/e;

    .line 158
    :cond_1
    return-void
.end method
