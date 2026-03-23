.class public Lcom/roblox/client/friends/ActivityUniversalFriends;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/contacts/h$a;
.implements Lcom/roblox/client/friends/a$a;
.implements Lcom/roblox/client/friends/a/a$a;
.implements Lcom/roblox/client/friends/b/a$a;
.implements Lcom/roblox/client/friends/c$b;


# instance fields
.field private m:I

.field private p:Landroid/support/design/widget/TabLayout;

.field private q:I

.field private r:Lcom/roblox/client/friends/b;

.field private s:Lcom/roblox/client/friends/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method private A()Z
    .locals 3

    .prologue
    .line 507
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    const-string v1, "RecordAudioPermissionAlreadyAsked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private B()V
    .locals 3

    .prologue
    .line 513
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    const-string v1, "RecordAudioPermissionAlreadyAsked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 515
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 520
    const-string v0, "contactFriendFinderGoToSettingsClicked"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 521
    return-void
.end method

.method private D()V
    .locals 4

    .prologue
    .line 540
    const-string v0, "Unknown"

    .line 542
    iget v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->m:I

    packed-switch v1, :pswitch_data_0

    .line 560
    :goto_0
    const-string v1, "ActivityUniversalFriends"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaving with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v2, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v3, "action"

    invoke-direct {v2, v3, v0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    const-string v0, "contactFriendFinderUserLeavingEvent"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 566
    return-void

    .line 544
    :pswitch_0
    const-string v0, "BackWhileLoading"

    goto :goto_0

    .line 547
    :pswitch_1
    const-string v0, "BackWithContacts"

    goto :goto_0

    .line 550
    :pswitch_2
    const-string v0, "Error"

    goto :goto_0

    .line 553
    :pswitch_3
    const-string v0, "BackNoSettingsAccess"

    goto :goto_0

    .line 556
    :pswitch_4
    const-string v0, "EmptyContacts"

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/friends/ActivityUniversalFriends;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    return p1
.end method

.method private a(IIII)Landroid/support/design/widget/TabLayout$e;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p3}, Landroid/support/design/widget/TabLayout$e;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$e;->c(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$e;->d(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 331
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 327
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/friends/ActivityUniversalFriends;)Lcom/roblox/client/friends/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    return-object v0
.end method

.method private a(IZ)V
    .locals 4

    .prologue
    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "granted"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 535
    const-string v1, "contactsAccessRequested"

    invoke-static {v1, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 537
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "action"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v1, "contactFriendFinderTermsRequested"

    invoke-static {v1, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 528
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 339
    invoke-static {p0, v0, p2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 341
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->v()V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->B()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/friends/ActivityUniversalFriends;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->z()V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/friends/ActivityUniversalFriends;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 357
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Contact permissions have already been granted. Displaying contact details."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->a()V

    .line 376
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_CONTACTS"

    .line 363
    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Contact permissions have already been denied once and the userselected \'Don\'t ask me again\'."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    const/4 v1, 0x1

    const v2, 0x7f0e016f

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/b;->a(II)V

    goto :goto_0

    .line 371
    :cond_1
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Contact permissions have NOT been granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->b()V

    .line 374
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->c()V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 382
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    const-string v1, "ContactsPermissionAlreadyAsked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    return-void
.end method

.method private w()Z
    .locals 3

    .prologue
    .line 392
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    const-string v1, "ContactsPermissionAlreadyAsked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private x()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 404
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Should show extra rationale."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Ljava/lang/String;I)V

    .line 432
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Already asked for the permission but no rationale needed. This means the user checked: \'Do not show again\'"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    const/4 v1, 0x1

    const v2, 0x7f0e016f

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/b;->a(II)V

    goto :goto_0

    .line 428
    :cond_1
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Requesting the permission for the first time."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 443
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Should show extra rationale."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Ljava/lang/String;I)V

    .line 471
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Already asked for the permission but no rationale needed. This means the user checked: \'Do not show again\'"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    const/4 v1, 0x0

    const v2, 0x7f0e017e

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/b;->a(II)V

    goto :goto_0

    .line 467
    :cond_1
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Requesting the permission for the first time."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private z()V
    .locals 3

    .prologue
    .line 480
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Recourd audio permission have already been granted. Displaying nearby."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->d()V

    .line 499
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 486
    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Recourd audio permissions have already been denied once and the userselected \'Don\'t ask me again\'."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    const/4 v1, 0x0

    const v2, 0x7f0e017e

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/b;->a(II)V

    goto :goto_0

    .line 494
    :cond_1
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Record audio permissions have NOT been granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->e()V

    .line 497
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->f()V

    goto :goto_0
.end method


# virtual methods
.method public d(I)V
    .locals 0

    .prologue
    .line 608
    iput p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->m:I

    .line 609
    return-void
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 579
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->C()V

    .line 583
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 584
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 586
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->startActivity(Landroid/content/Intent;)V

    .line 588
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 594
    const-string v0, "Continue"

    invoke-direct {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->x()V

    .line 597
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->y()V

    .line 616
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->D()V

    .line 604
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x2

    const v5, 0x7f0a00a1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->setContentView(I)V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->m:I

    .line 92
    const v0, 0x7f0801e9

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 95
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->f()Landroid/support/v7/app/a;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    const v2, 0x7f0e0186

    invoke-virtual {v1, v2}, Landroid/support/v7/app/a;->a(I)V

    .line 99
    invoke-virtual {v1, v4}, Landroid/support/v7/app/a;->b(Z)V

    .line 100
    invoke-virtual {v1, v3}, Landroid/support/v7/app/a;->a(Z)V

    .line 101
    invoke-static {v0, p0}, Lcom/roblox/client/components/p;->b(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 105
    :cond_0
    new-instance v0, Lcom/roblox/client/friends/b;

    const v1, 0x7f080072

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/friends/b;-><init>(Landroid/support/v7/app/c;I)V

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    .line 107
    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    .line 110
    const v0, 0x7f0e0189

    const v1, 0x7f0707be

    invoke-direct {p0, v0, v1, v5, v3}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IIII)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0, v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;I)V

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    .line 118
    const v0, 0x7f0e0188

    const v1, 0x7f07078e

    invoke-direct {p0, v0, v1, v5, v4}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IIII)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0, v4}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;I)V

    .line 126
    :cond_1
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->g()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    .line 127
    const v0, 0x7f0e0187

    const v1, 0x7f07009b

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IIII)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0, v6}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;I)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/roblox/client/friends/ActivityUniversalFriends$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/ActivityUniversalFriends$1;-><init>(Lcom/roblox/client/friends/ActivityUniversalFriends;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    .line 218
    new-instance v0, Lcom/roblox/client/friends/UniversalFriendsPresenter;

    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->getLifecycle()Landroid/arch/lifecycle/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/roblox/client/friends/UniversalFriendsPresenter;-><init>(Landroid/arch/lifecycle/d;Lcom/roblox/client/friends/c$b;)V

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/roblox/client/friends/c$a;

    .line 220
    if-eqz p1, :cond_3

    .line 221
    const-string v0, "selected_tab_index_bundle_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_3
    iput v3, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 230
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 231
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 269
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->D()V

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 238
    sparse-switch v1, :sswitch_data_0

    .line 247
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 240
    :sswitch_0
    iget-object v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v1, p0}, Lcom/roblox/client/friends/b;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 243
    :sswitch_1
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->finish()V

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f08012b -> :sswitch_0
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 297
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Received response for contact permissions request."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {p3}, Lcom/roblox/client/util/i;->a([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Read Contacts permission granted. Fetching contacts."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, v3, v3}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    .line 324
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Contacts permissions were NOT granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, v3, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    .line 309
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 310
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Received response for record_audio permissions request."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {p3}, Lcom/roblox/client/util/i;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Record_audio permission granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, v2, v3}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    .line 317
    :cond_2
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "Record_audio permissions were NOT granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, v2, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/roblox/client/k;->onResume()V

    .line 253
    const-string v0, "ActivityUniversalFriends"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:Lcom/roblox/client/friends/b;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b;->g()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->p:Landroid/support/design/widget/TabLayout;

    iget v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->f()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    const-string v0, "selected_tab_index_bundle_key"

    iget v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    return-void
.end method
